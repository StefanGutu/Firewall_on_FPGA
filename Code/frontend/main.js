/*
   type 2 = Packet Blocked
   type 3 = OK (ignored)
   type 4 = IP Spoofing
   type 5 = ARP Spoofing
*/

const ATTACK_TYPES = {
    2: { name: 'PACKET BLOCKED', cssClass: 'pkt', color: '#ffd60a' },
    4: { name: 'IP SPOOFING',    cssClass: 'ip',  color: '#ff6b35' },
    5: { name: 'ARP SPOOFING',   cssClass: 'arp', color: '#ff2d55' },
};

const IGNORED = new Set([3]);

const counts = { 2: 0, 4: 0, 5: 0 };
let total    = 0;
let logCount = 0;
let ws       = null;

const pieCtx = document.getElementById('pieChart').getContext('2d');
const pieChart = new Chart(pieCtx, {
    type: 'doughnut',
    data: {
        labels: ['ARP Spoofing', 'IP Spoofing', 'Packet Blocked'],
        datasets: [{
            data: [0, 0, 0],
            backgroundColor: ['#ff2d5566', '#ff6b3566', '#ffd60a66'],
            borderColor:     ['#ff2d55',   '#ff6b35',   '#ffd60a'],
            borderWidth: 2,
            hoverOffset: 6,
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: true,
        animation: { duration: 400 },
        plugins: {
            legend: {
                position: 'bottom',
                labels: {
                    color: '#8aa0b0',
                    font: { family: 'Share Tech Mono', size: 10 },
                    padding: 14,
                    usePointStyle: true,
                }
            },
            tooltip: {
                callbacks: {
                    label: (ctx) => {
                        const val = ctx.parsed;
                        const pct = total > 0 ? ((val / total) * 100).toFixed(1) : '0.0';
                        return ' ' + ctx.label + ': ' + val + ' (' + pct + '%)';
                    }
                }
            }
        }
    }
});

function updateTopStats() {
    document.getElementById('stat-total').textContent = total;
    document.getElementById('stat-pkt').textContent = counts[2];
    document.getElementById('stat-ip').textContent  = counts[4];
    document.getElementById('stat-arp').textContent = counts[5];
}

function updatePie() {
    pieChart.data.datasets[0].data = [counts[5], counts[4], counts[2]];
    pieChart.update();
    document.getElementById('total-badge').textContent = 'TOTAL: ' + total;
    updateTopStats();
}

function now() {
    return new Date().toLocaleTimeString('en-US', { hour12: false });
}

function startClock() {
    setInterval(() => {
        document.getElementById('clock').textContent = new Date().toLocaleTimeString('en-US', { hour12: false });
    }, 1000);
}

function setConnectionStatus(s) {
    document.getElementById('ws-dot').className = 'dot ' + s;
    document.getElementById('ws-status').textContent =
        s === 'connected' ? 'CONNECTED' : s === 'error' ? 'ERROR' : 'DISCONNECTED';
}

function addLog(attackType, extraMsg) {
    logCount++;
    document.getElementById('log-count').textContent = logCount + ' EVT';

    const body = document.getElementById('log-body');
    const div  = document.createElement('div');

    let cssClass, typeName, msg;

    if (attackType === 0) {
        cssClass = 'info';
        typeName = 'SYSTEM';
        msg      = extraMsg;
    } else {
        const atk = ATTACK_TYPES[attackType];
        cssClass  = atk.cssClass;
        typeName  = atk.name;
        msg       = '#' + counts[attackType] + ' detected';
    }

    div.className = 'log-line ' + cssClass;
    div.innerHTML =
        '<span class="log-ts">[' + now() + ']</span>' +
        '<span class="log-type">' + typeName + '</span>' +
        '<span class="log-msg">' + msg + '</span>';

    body.prepend(div);
    if (body.children.length > 200) body.removeChild(body.lastChild);
}

function handleAttack(attackType) {
    counts[attackType]++;
    total++;
    updatePie();
    addLog(attackType);
}

function resetStats() {
    counts[2] = 0; counts[4] = 0; counts[5] = 0;
    total = 0; logCount = 0;

    document.getElementById('log-body').innerHTML = '';
    document.getElementById('log-count').textContent = '0 EVT';

    updatePie();
    logCount = 0;
    addLog(0, 'Statistics reset');
}

function connectWS() {
    const url = 'ws://' + document.getElementById('ws-url').value.trim();
    addLog(0, 'Connecting to ' + url + '...');

    try { ws = new WebSocket(url); }
    catch(e) { addLog(0, 'Invalid URL: ' + e.message); return; }

    document.getElementById('btn-connect').style.display    = 'none';
    document.getElementById('btn-disconnect').style.display = '';

    ws.onopen = () => {
        setConnectionStatus('connected');
        addLog(0, 'Connected to ' + url);
    };

    ws.onmessage = (event) => {
        let data;
        try { data = JSON.parse(event.data); }
        catch(e) { addLog(0, 'Invalid JSON: ' + event.data); return; }

        const t = data.type;
        if (IGNORED.has(t)) return;
        if (!ATTACK_TYPES[t]) { addLog(0, 'Unknown type: ' + t); return; }

        handleAttack(t);
    };

    ws.onerror = () => {
        setConnectionStatus('error');
        addLog(0, 'WebSocket error');
    };

    ws.onclose = () => {
        setConnectionStatus('disconnected');
        addLog(0, 'WebSocket closed');
        document.getElementById('btn-connect').style.display    = '';
        document.getElementById('btn-disconnect').style.display = 'none';
    };
}

function disconnectWS() {
    if (ws) { ws.close(); ws = null; }
}

startClock();
addLog(0, 'Dashboard initialized. Waiting for WebSocket connection.');