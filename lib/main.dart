
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>Trueque · Compra y venta</title>
<style>
:root{--bg:#f6f7f9;--card:#fff;--text:#1b1f24;--muted:#6b7280;--brand:#ff6b35;--line:#e5e7eb;--me:#ff6b35;--them:#eceef1;box-sizing:border-box;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]){--bg:#111317;--card:#1b1e24;--text:#f1f3f5;--muted:#9aa1ac;--line:#2b2f37;--them:#2a2e36}}
:root[data-theme="dark"]{--bg:#111317;--card:#1b1e24;--text:#f1f3f5;--muted:#9aa1ac;--line:#2b2f37;--them:#2a2e36}
*{box-sizing:border-box}
html,body{height:100%;margin:0}
body{background:var(--bg);color:var(--text);font-family:system-ui,-apple-system,Segoe UI,Roboto,sans-serif;max-width:480px;margin:0 auto}
.screen{display:none;height:100%;flex-direction:column}
.screen.on{display:flex}
.scroll{flex:1;overflow-y:auto;padding:16px}
button{font:inherit;cursor:pointer;border:0}
.btn{background:var(--brand);color:#fff;padding:14px;border-radius:12px;font-weight:700;width:100%}
.btn.alt{background:var(--card);color:var(--text);border:1px solid var(--line)}
input,textarea,select{width:100%;padding:12px;border:1px solid var(--line);border-radius:10px;background:var(--card);color:var(--text);font:inherit;margin-bottom:10px}
label{font-size:13px;color:var(--muted);display:block;margin-bottom:4px}
h1,h2{margin:0 0 8px}
.top{display:flex;align-items:center;gap:10px;padding:12px 16px;border-bottom:1px solid var(--line);background:var(--card)}
.top .back{background:none;color:var(--text);font-size:22px;padding:0 6px}
.top h2{font-size:18px;flex:1;margin:0}
.welcome{justify-content:center;align-items:center;text-align:center;padding:32px;gap:12px;background:linear-gradient(160deg,#ff6b35,#ff9a3c);color:#fff}
.welcome .logo{font-size:84px}
.welcome .btn{background:#fff;color:#d94a14;max-width:320px;margin-top:20px}
.tabs{display:flex;gap:6px;margin-bottom:14px}
.tabs button{flex:1;padding:10px;border-radius:10px;background:var(--card);color:var(--muted);border:1px solid var(--line);font-weight:600}
.tabs button.on{background:var(--brand);color:#fff;border-color:var(--brand)}
.avatar{width:92px;height:92px;border-radius:50%;background:var(--them);margin:0 auto 12px;display:flex;align-items:center;justify-content:center;font-size:36px;overflow:hidden;cursor:pointer;border:2px dashed var(--line)}
.avatar img{width:100%;height:100%;object-fit:cover}
.grid{display:grid;grid-template-columns:1fr 1fr;gap:12px}
