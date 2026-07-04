# Firewall cu detecție de spoofing implementat pe FPGA

Un firewall implementat pe platforma de dezvoltare Arty Z7-20. Acesta contine două subsisteme, unul software care se ocupă de procese complexe cum ar fi mecanismele de securitate, gestionarea pachetelor și controlul sistemului și subsistemul hardware care se ocupă de efectuarea filtrarii pe baza regulilor introduse de utilizator. Din perspectiva securității, sistemul oferă protecție împotriva atacurilor de tip IP spoofing și ARP spoofing, iar regulile de filtrare pot fi configurate dinamic în timpul funcționării. În plus, s-a dezvoltat o interfață web care comunică cu sistemul printr-un server WebSocket ca să permită monitorizarea evenimentelor detectate.

---

## Rularea firewall-ului (cu imaginea de pe FirewallExample)

### Cerințe prealabile

- Arty Z7-20
- Card microSD
- 2 cabluri Ethernet
- Modul Ethernet W5500 
- Un calculator cu Vivado instalat (opțional, pentru analiza hardware)

---

### Pasul 1: Scrierea imaginii pe cardul SD

După ce ai obținut imaginea `FirewallExample`, scrie-o pe cardul SD (exemplu mai jos):

```bash
sudo dd if=petalinux-sdimage.wic of=/dev/sdc bs=4M conv=fsync status=progress
```

> **Atenție:** Verifică dispozitivul țintă cu `lsblk` înainte de a rula `dd`. Scrierea pe dispozitivul greșit va corupe datele.

---

### Pasul 2: Pornirea plăcii și deschiderea unui terminal serial

Introdu SD cardul în Arty Z7-20, conectează platforma de dezvoltare prin USB apoi deschide un terminal pe calculatorul tău:

```bash
screen -h 5000 /dev/ttyUSB1 115200
```

---

### Pasul 3: (Opțional) Deschiderea Hardware Manager în Vivado

Dacă dorești să inspectezi hardware-ul cu Hardware Manager din Vivado:

1. Când apar mesajele de boot în terminalul serial, **apasă Enter** pentru a opri procesul de boot la promptul U-Boot.
2. Deschide Vivado pe calculatorul tău și lansează Hardware Manager.
3. Conectează-te și încarcă sesiunea de analiză ILA / hardware după necesitate.
4. Când ai terminat, scrie `boot` în terminal pentru a continua boot-ul.

Dacă nu ai nevoie de analiza hardware, lasă să se booteze normal.

---

### Pasul 4: Autentificarea

Credențiale implicite setate în build-ul PetaLinux:


Utilizator:  `petalinux` 
Parolă:     setată la prima autentificare (vei fi solicitat să creezi una) 

---

### Pasul 5: Setarea adresei IP

Atribuie o adresă IP statică interfeței care este conectată la laptop:

```bash
# Adaugă adresa:
sudo ip addr add 192.168.1.20/24 dev <interfata_laptop>
```

---

### Pasul 6: Conectarea fizică a echipamentelor

Conectează totul astfel încât platforma de dezvoltare să se afle **între internet și laptopul tău**:

```
Internet (router) ──eth_internet──► FPGA ──eth_laptop──► Laptop
```

Ambele interfețe trebuie să fie active.

---

### Pasul 7: Activarea rutării traficului și regulile de firewall

Rulează următoarele comenzi pe platforma de dezvoltare (înlocuiește `eth_internet` și `eth_laptop` cu numele reale ale interfețelor):

```bash
# Activează IP forwarding
sudo sysctl -w net.ipv4.ip_forward=1

# Șterge regulile existente
sudo iptables -F FORWARD
sudo iptables -t nat -F POSTROUTING

# NAT pentru traficul de ieșire
sudo iptables -t nat -A POSTROUTING -o eth_internet -j MASQUERADE

# Trimite traficul forwardat prin coada firewall-ului
sudo iptables -I FORWARD -i eth_laptop -j NFQUEUE --queue-num 0
sudo iptables -I FORWARD -i eth_internet -o eth_laptop -j NFQUEUE --queue-num 1
```

---

### Pasul 8: Compilarea și rularea aplicației firewall

Navighează în directorul proiectului și compilează:

```bash
cd <directorul-proiectului>
make
```

Apoi execută binarul compilat al firewall-ului.

---

### Pasul 9: Pornirea serverului frontend (pe laptopul tău)

De pe laptopul tău, navighează în folderul `frontend` al proiectului și pornește un server HTTP simplu:

```bash
python3 -m http.server 8080
```

Deschide browserul și accesează `http://localhost:8080`. Pe măsură ce traficul trece prin firewall, vei vedea tipurile de amenințări și evenimentele detectate de firewall afișate pe pagină.

---

### Toate comenzile

### Laptop

```bash
python3 -m http.server 8080   # rulat din folderul frontend/
```

### FPGA

```bash
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -F FORWARD
sudo iptables -t nat -F POSTROUTING
sudo iptables -t nat -A POSTROUTING -o eth_internet -j MASQUERADE
sudo iptables -I FORWARD -i eth_laptop   -j NFQUEUE --queue-num 0
sudo iptables -I FORWARD -i eth_internet -o eth_laptop -j NFQUEUE --queue-num 1
```
