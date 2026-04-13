<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Krishak — Sign In</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Sora:wght@300;400;500;600;700;800&family=Noto+Sans+Telugu:wght@400;500;600&family=Noto+Sans+Devanagari:wght@400;500;600&display=swap" rel="stylesheet">
<style>
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

:root {
  --soil:    #2d1f14;
  --soil-md: #4a3020;
  --cream:   #faf7f0;
  --wheat:   #e8c97a;
  --wheat-lt:#f7edca;
  --leaf:    #3a6b35;
  --leaf-lt: #5a9a52;
  --leaf-bg: #eaf4e8;
  --border:  #ddd0bc;
  --text:    #1c1208;
  --text-md: #5a4030;
  --text-lt: #9c8070;
  --rust:    #c0431a;
  --amber:   #d97706;
}

html, body { height: 100%; }

body {
  font-family: 'Sora', 'Noto Sans Telugu', 'Noto Sans Devanagari', sans-serif;
  background: var(--cream);
  display: grid;
  grid-template-columns: 1fr 1fr;
  min-height: 100vh;
}

/* ── LEFT PANEL ── */
.left-panel {
  background: var(--soil);
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 3rem;
}

/* Animated radial sunrise effect */
.sunrise-bg {
  position: absolute;
  bottom: -40%;
  left: 50%;
  transform: translateX(-50%);
  width: 160%;
  padding-bottom: 160%;
  background: conic-gradient(
    from 200deg at 50% 100%,
    #0d2b4a 0deg,
    #1a4a7a 20deg,
    #2e7bb5 40deg,
    #5ba3d9 50deg,
    #2e7bb5 60deg,
    #1a4a7a 80deg,
    #0d2b4a 100deg,
    #0d2b4a 360deg
  );
  border-radius: 50%;
  animation: rotate-sky 20s linear infinite;
  opacity: 0.6;
}
@keyframes rotate-sky { to { transform: translateX(-50%) rotate(360deg); } }

.glow-core {
  position: absolute;
  bottom: 0; left: 50%;
  transform: translateX(-50%);
  width: 300px; height: 200px;
  background: radial-gradient(ellipse at 50% 100%, rgba(232,201,122,0.25) 0%, transparent 70%);
}

/* Floating crop icons */
.floaters { position: absolute; inset: 0; pointer-events: none; }
.floater {
  position: absolute;
  font-size: 1.8rem;
  opacity: 0.25;
  animation: float-up linear infinite;
  filter: drop-shadow(0 2px 4px rgba(0,0,0,0.3));
}
@keyframes float-up {
  from { transform: translateY(100vh) rotate(0deg); opacity: 0; }
  10%  { opacity: 0.25; }
  90%  { opacity: 0.15; }
  to   { transform: translateY(-10vh) rotate(360deg); opacity: 0; }
}

/* Center content */
.left-center {
  position: relative;
  z-index: 10;
  text-align: center;
  color: white;
  animation: fadeUp 0.8s ease both 0.2s;
}
@keyframes fadeUp {
  from { opacity: 0; transform: translateY(24px); }
  to   { opacity: 1; transform: translateY(0); }
}

.big-logo {
  width: 96px; height: 96px;
  background: rgba(232,201,122,0.15);
  border-radius: 28px;
  border: 2px solid rgba(232,201,122,0.35);
  display: flex; align-items: center; justify-content: center;
  font-size: 3rem;
  margin: 0 auto 1.5rem;
  backdrop-filter: blur(6px);
  box-shadow: 0 20px 40px rgba(0,0,0,0.3);
  animation: logoFloat 4s ease-in-out infinite;
}
@keyframes logoFloat {
  0%,100% { transform: translateY(0); }
  50% { transform: translateY(-8px); }
}
.big-appname {
  font-size: 2.8rem;
  font-weight: 800;
  color: var(--wheat);
  letter-spacing: -0.02em;
  margin-bottom: 8px;
}
.big-tagline {
  font-size: 0.9rem;
  color: rgba(255,255,255,0.65);
  max-width: 260px;
  line-height: 1.6;
  margin: 0 auto 2.5rem;
}

/* Stats row */
.stats-row {
  display: flex;
  gap: 1.5rem;
  justify-content: center;
  margin-bottom: 2.5rem;
}
.stat-pill {
  text-align: center;
  background: rgba(255,255,255,0.08);
  border: 1px solid rgba(255,255,255,0.15);
  border-radius: 12px;
  padding: 10px 16px;
  backdrop-filter: blur(4px);
}
.stat-pill-num { font-size: 1.2rem; font-weight: 800; color: var(--wheat); }
.stat-pill-lbl { font-size: 0.68rem; color: rgba(255,255,255,0.6); text-transform: uppercase; letter-spacing: 0.08em; margin-top: 2px; }

/* Testimonial */
.testimonial {
  background: rgba(255,255,255,0.07);
  border: 1px solid rgba(255,255,255,0.12);
  border-radius: 14px;
  padding: 1.2rem 1.5rem;
  max-width: 320px;
  text-align: left;
  backdrop-filter: blur(6px);
}
.test-quote { font-size: 0.88rem; color: rgba(255,255,255,0.85); line-height: 1.65; margin-bottom: 10px; font-style: italic; }
.test-author { display: flex; align-items: center; gap: 10px; }
.test-avatar { width: 36px; height: 36px; border-radius: 50%; background: var(--leaf); display: flex; align-items: center; justify-content: center; font-size: 1.1rem; }
.test-name { font-size: 0.82rem; font-weight: 700; color: white; }
.test-loc  { font-size: 0.72rem; color: rgba(255,255,255,0.5); }

/* ── RIGHT PANEL ── */
.right-panel {
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 3rem 4rem;
  overflow-y: auto;
}

.form-header { margin-bottom: 2rem; }
.form-title { font-size: 2rem; font-weight: 800; color: var(--soil); margin-bottom: 6px; }
.form-subtitle { font-size: 0.88rem; color: var(--text-lt); }
.form-subtitle a { color: var(--leaf); font-weight: 600; text-decoration: none; }
.form-subtitle a:hover { text-decoration: underline; }

/* Welcome back banner */
.welcome-back {
  display: none;
  background: linear-gradient(135deg, var(--leaf-bg), var(--wheat-lt));
  border: 1px solid var(--leaf-lt);
  border-radius: 12px;
  padding: 12px 16px;
  margin-bottom: 1.25rem;
  align-items: center;
  gap: 12px;
}
.welcome-back.show { display: flex; animation: fadeUp 0.4s ease; }
.wb-avatar { width: 40px; height: 40px; border-radius: 50%; background: var(--leaf); display: flex; align-items: center; justify-content: center; font-size: 1.2rem; flex-shrink: 0; }
.wb-text { flex: 1; }
.wb-name { font-weight: 700; font-size: 0.92rem; color: var(--soil); }
.wb-hint { font-size: 0.75rem; color: var(--text-lt); }
.wb-clear { font-size: 0.75rem; color: var(--rust); font-weight: 600; cursor: pointer; flex-shrink: 0; }

.tab-switch {
  display: grid;
  grid-template-columns: 1fr 1fr;
  background: #f0ebe0;
  border-radius: 10px;
  padding: 3px;
  margin-bottom: 1.5rem;
}
.tab-btn {
  padding: 9px;
  border-radius: 8px;
  border: none;
  background: transparent;
  font-family: inherit;
  font-size: 0.85rem;
  font-weight: 600;
  color: var(--text-lt);
  cursor: pointer;
  transition: all 0.2s;
}
.tab-btn.active { background: white; color: var(--soil); box-shadow: 0 1px 4px rgba(0,0,0,0.1); }

.form-group { margin-bottom: 1rem; }
.form-label {
  display: flex;
  align-items: center;
  justify-content: space-between;
  font-size: 0.82rem;
  font-weight: 600;
  color: var(--soil);
  margin-bottom: 6px;
}
.form-label a { font-weight: 600; color: var(--leaf); text-decoration: none; font-size: 0.78rem; }
.form-label a:hover { text-decoration: underline; }

.input-wrap { position: relative; }
.form-input {
  width: 100%;
  padding: 13px 14px 13px 44px;
  border: 1.5px solid var(--border);
  border-radius: 10px;
  font-family: inherit;
  font-size: 0.9rem;
  color: var(--text);
  background: white;
  transition: border-color 0.2s, box-shadow 0.2s;
}
.form-input:focus {
  outline: none;
  border-color: var(--leaf);
  box-shadow: 0 0 0 3px rgba(58,107,53,0.12);
}
.form-input.error {
  border-color: var(--rust);
  box-shadow: 0 0 0 3px rgba(192,67,26,0.1);
  animation: shake 0.4s ease;
}
@keyframes shake {
  0%,100% { transform: translateX(0); }
  25%      { transform: translateX(-6px); }
  75%      { transform: translateX(6px); }
}
.input-icon {
  position: absolute; left: 14px; top: 50%;
  transform: translateY(-50%);
  font-size: 1rem; pointer-events: none;
}
.input-suffix {
  position: absolute; right: 12px; top: 50%;
  transform: translateY(-50%);
  cursor: pointer; font-size: 0.88rem;
  color: var(--text-lt);
  background: none; border: none;
}
.field-error {
  font-size: 0.75rem;
  color: var(--rust);
  margin-top: 4px;
  display: none;
  align-items: center;
  gap: 4px;
}
.field-error.show { display: flex; }

/* OTP Panel */
.otp-panel { display: none; }
.otp-inputs {
  display: flex;
  gap: 10px;
  justify-content: center;
  margin: 1rem 0;
}
.otp-box {
  width: 52px; height: 56px;
  border: 1.5px solid var(--border);
  border-radius: 10px;
  font-family: inherit;
  font-size: 1.3rem;
  font-weight: 700;
  text-align: center;
  color: var(--soil);
  background: white;
  transition: border-color 0.2s;
}
.otp-box:focus { outline: none; border-color: var(--leaf); box-shadow: 0 0 0 3px rgba(58,107,53,0.12); }

.remember-row {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 1.2rem;
}
.check-label {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 0.82rem;
  color: var(--text-md);
  cursor: pointer;
}
.check-label input { accent-color: var(--leaf); }

.submit-btn {
  width: 100%;
  padding: 14px;
  background: var(--leaf);
  color: white;
  border: none;
  border-radius: 10px;
  font-family: inherit;
  font-size: 1rem;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.2s;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
}
.submit-btn:hover { background: var(--leaf-lt); transform: translateY(-1px); box-shadow: 0 6px 20px rgba(58,107,53,0.3); }
.submit-btn:active { transform: translateY(0); }
.submit-btn:disabled { opacity: 0.6; cursor: not-allowed; transform: none; }

.divider {
  display: flex; align-items: center; gap: 12px;
  margin: 1.2rem 0; font-size: 0.78rem; color: var(--text-lt);
}
.divider::before, .divider::after { content:''; flex:1; height:1px; background:var(--border); }

.social-btn {
  width: 100%;
  padding: 11px;
  border: 1.5px solid var(--border);
  border-radius: 10px;
  background: white;
  font-family: inherit;
  font-size: 0.88rem;
  font-weight: 600;
  color: var(--text-md);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  transition: all 0.15s;
  margin-bottom: 8px;
}
.social-btn:hover { border-color: var(--leaf-lt); background: var(--leaf-bg); }

/* Error Banner */
.error-banner {
  display: none;
  background: #fdf0ec;
  border: 1px solid #f4c2b0;
  border-left: 4px solid var(--rust);
  border-radius: 8px;
  padding: 10px 14px;
  font-size: 0.82rem;
  color: var(--rust);
  margin-bottom: 1rem;
  align-items: center;
  gap: 8px;
}
.error-banner.show { display: flex; animation: fadeUp 0.3s ease; }

.toast {
  position: fixed;
  bottom: 2rem; left: 50%;
  transform: translateX(-50%) translateY(100px);
  background: var(--soil);
  color: white;
  padding: 12px 24px;
  border-radius: 50px;
  font-size: 0.88rem;
  font-weight: 600;
  z-index: 1000;
  transition: transform 0.3s ease;
}
.toast.show { transform: translateX(-50%) translateY(0); }

@media (max-width: 768px) {
  body { grid-template-columns: 1fr; }
  .left-panel { display: none; }
  .right-panel { padding: 2rem 1.5rem; }
}
</style>
</head>
<body>

<!-- ── LEFT PANEL ── -->
<div class="left-panel">
  <div class="sunrise-bg"></div>
  <div class="glow-core"></div>

  <!-- Floating crop particles -->
  <div class="floaters" id="floaters"></div>

  <div class="left-center">
    <div class="big-logo">🌱</div>
    <div class="big-appname">Krishak</div>
    <div class="big-tagline">Your AI-powered farming companion. Grow smarter every season.</div>

    <div class="stats-row">
      <div class="stat-pill">
        <div class="stat-pill-num">50K+</div>
        <div class="stat-pill-lbl">Farmers</div>
      </div>
      <div class="stat-pill">
        <div class="stat-pill-num">18</div>
        <div class="stat-pill-lbl">States</div>
      </div>
      <div class="stat-pill">
        <div class="stat-pill-num">3</div>
        <div class="stat-pill-lbl">Languages</div>
      </div>
    </div>

    <div class="testimonial">
      <div class="test-quote" id="test-quote">"Krishak's soil recommendations helped me switch to maize and increase my income by 40% this season."</div>
      <div class="test-author">
        <div class="test-avatar">👨‍🌾</div>
        <div>
          <div class="test-name" id="test-name">Suresh Reddy</div>
          <div class="test-loc" id="test-loc">Nalgonda, Telangana</div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- ── RIGHT PANEL ── -->
<div class="right-panel">
  <div class="form-header">
    <div class="form-title">Welcome back 👋</div>
    <div class="form-subtitle">New to Krishak? <a href="signup.html">Create a free account →</a></div>
  </div>

  <!-- Welcome back banner (if user remembered) -->
  <div class="welcome-back" id="welcome-back">
    <div class="wb-avatar">👨‍🌾</div>
    <div class="wb-text">
      <div class="wb-name" id="wb-name">Welcome back!</div>
      <div class="wb-hint">Sign in to continue where you left off</div>
    </div>
    <div class="wb-clear" onclick="clearSaved()">Not you?</div>
  </div>

  <!-- Login method tabs -->
  <div class="tab-switch">
    <button class="tab-btn active" id="tab-pass" onclick="switchTab('pass')">📱 Phone + Password</button>
    <button class="tab-btn" id="tab-otp" onclick="switchTab('otp')">🔢 OTP Login</button>
  </div>

  <!-- Error banner -->
  <div class="error-banner" id="error-banner">
    <span>⚠️</span>
    <span id="error-msg">Invalid phone number or password.</span>
  </div>

  <!-- PASSWORD LOGIN -->
  <div id="pass-panel">
    <div class="form-group">
      <label class="form-label">Mobile Number</label>
      <div class="input-wrap">
        <span class="input-icon">📱</span>
        <input type="tel" class="form-input" id="login-phone" placeholder="+91 98765 43210" maxlength="13" oninput="clearBanner()">
      </div>
      <div class="field-error" id="lphone-err">⚠ Enter a valid mobile number</div>
    </div>

    <div class="form-group">
      <label class="form-label">
        Password
        <a href="#" onclick="showForgot()">Forgot password?</a>
      </label>
      <div class="input-wrap">
        <span class="input-icon">🔒</span>
        <input type="password" class="form-input" id="login-pass" placeholder="Your password" oninput="clearBanner()" onkeydown="if(event.key==='Enter')doLogin()">
        <button class="input-suffix" type="button" onclick="togglePass()">👁️</button>
      </div>
      <div class="field-error" id="lpass-err">⚠ Please enter your password</div>
    </div>

    <div class="remember-row">
      <label class="check-label">
        <input type="checkbox" id="remember" checked>
        Keep me signed in
      </label>
    </div>

    <button class="submit-btn" id="login-btn" onclick="doLogin()">
      Sign In →
    </button>
  </div>

  <!-- OTP LOGIN -->
  <div id="otp-panel" class="otp-panel">
    <div id="otp-step-phone">
      <div class="form-group">
        <label class="form-label">Mobile Number</label>
        <div class="input-wrap">
          <span class="input-icon">📱</span>
          <input type="tel" class="form-input" id="otp-phone" placeholder="+91 98765 43210" maxlength="13">
        </div>
      </div>
      <button class="submit-btn" onclick="sendOTP()">Send OTP →</button>
    </div>

    <div id="otp-step-verify" style="display:none;">
      <div style="text-align:center;margin-bottom:1rem;">
        <div style="font-size:1.8rem;margin-bottom:6px;">📲</div>
        <div style="font-weight:700;color:var(--soil);font-size:0.95rem;" id="otp-sent-to">OTP sent to +91 XXXXX</div>
        <div style="font-size:0.78rem;color:var(--text-lt);margin-top:4px;">Enter the 6-digit code below</div>
      </div>
      <div class="otp-inputs" id="otp-boxes"></div>
      <div style="text-align:center;margin-bottom:1rem;">
        <div style="font-size:0.82rem;color:var(--text-lt);">Didn't receive? <button onclick="resendOTP()" style="background:none;border:none;color:var(--leaf);font-weight:600;cursor:pointer;font-size:0.82rem;" id="resend-btn">Resend OTP</button></div>
        <div style="font-size:0.75rem;color:var(--text-lt);margin-top:4px;" id="otp-timer"></div>
      </div>
      <button class="submit-btn" onclick="verifyOTP()">Verify & Sign In →</button>
      <button style="width:100%;padding:12px;background:white;color:var(--soil);border:1.5px solid var(--border);border-radius:10px;font-family:inherit;font-size:0.88rem;font-weight:600;cursor:pointer;margin-top:8px;" onclick="backToPhone()">← Change Number</button>
    </div>
  </div>

  <div class="divider">or continue with</div>
  <button class="social-btn" onclick="showToast('Google sign-in coming soon!')">
    <svg width="18" height="18" viewBox="0 0 24 24"><path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/><path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/><path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z"/><path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.47 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/></svg>
    Continue with Google
  </button>

  <div style="margin-top:1.5rem;text-align:center;font-size:0.78rem;color:var(--text-lt);">
    By signing in, you agree to our <a href="#" style="color:var(--leaf);">Terms</a> &amp; <a href="#" style="color:var(--leaf);">Privacy Policy</a>.
  </div>
</div>

<div class="toast" id="toast"></div>

<script>
// ── Floating crop particles ──
const cropEmojis = ['🌾','🌽','🌻','🌿','🍃','🌱','🌾','🌽'];
const floaters = document.getElementById('floaters');
for (let i = 0; i < 12; i++) {
  const el = document.createElement('div');
  el.className = 'floater';
  el.textContent = cropEmojis[i % cropEmojis.length];
  el.style.cssText = `
    left: ${Math.random() * 100}%;
    animation-duration: ${8 + Math.random() * 10}s;
    animation-delay: ${Math.random() * 10}s;
    font-size: ${1.2 + Math.random() * 1.2}rem;
  `;
  floaters.appendChild(el);
}

// ── Rotating testimonials ──
const testimonials = [
  { quote: '"Krishak\'s soil recommendations helped me switch to maize and increase my income by 40% this season."', name:'Suresh Reddy', loc:'Nalgonda, Telangana', av:'👨‍🌾' },
  { quote: '"The power schedule feature saved me so much time planning irrigation. No more guessing when current will come."', name:'Priya Devi', loc:'Karimnagar, Telangana', av:'👩‍🌾' },
  { quote: '"Market price alerts helped me sell cotton at the peak price. I made ₹30,000 more than last year."', name:'Ramesh Yadav', loc:'Warangal, Telangana', av:'🧑‍🌾' },
];
let testIdx = 0;
setInterval(() => {
  testIdx = (testIdx + 1) % testimonials.length;
  const t = testimonials[testIdx];
  document.getElementById('test-quote').style.opacity = 0;
  setTimeout(() => {
    document.getElementById('test-quote').textContent = t.quote;
    document.getElementById('test-name').textContent = t.name;
    document.getElementById('test-loc').textContent = t.loc;
    document.getElementById('test-quote').style.opacity = 1;
  }, 300);
}, 5000);
document.getElementById('test-quote').style.transition = 'opacity 0.3s';

// ── Check for saved user ──
const saved = localStorage.getItem('krishakUser');
if (saved) {
  try {
    const u = JSON.parse(saved);
    const wb = document.getElementById('welcome-back');
    document.getElementById('wb-name').textContent = `Welcome back, ${u.name.split(' ')[0]}!`;
    wb.classList.add('show');
    // Pre-fill phone
    if (u.phone) document.getElementById('login-phone').value = u.phone;
  } catch(e) {}
}

function clearSaved() {
  document.getElementById('welcome-back').classList.remove('show');
  document.getElementById('login-phone').value = '';
  document.getElementById('login-pass').value = '';
}

// ── Tab switching ──
function switchTab(tab) {
  document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  document.getElementById('tab-' + tab).classList.add('active');
  document.getElementById('pass-panel').style.display = tab === 'pass' ? 'block' : 'none';
  document.getElementById('otp-panel').style.display = tab === 'otp' ? 'block' : 'none';
  clearBanner();
}

// ── Password login ──
function doLogin() {
  const phone = document.getElementById('login-phone').value.replace(/\D/g,'');
  const pass  = document.getElementById('login-pass').value;

  if (phone.length < 10) {
    document.getElementById('login-phone').classList.add('error');
    document.getElementById('lphone-err').classList.add('show');
    return;
  }
  if (!pass) {
    document.getElementById('login-pass').classList.add('error');
    document.getElementById('lpass-err').classList.add('show');
    return;
  }

  const btn = document.getElementById('login-btn');
  btn.disabled = true;
  btn.innerHTML = '<div style="width:20px;height:20px;border:2px solid rgba(255,255,255,0.4);border-top-color:white;border-radius:50%;animation:spin 0.8s linear infinite;"></div> Signing in...';
  document.head.insertAdjacentHTML('beforeend','<style>@keyframes spin{to{transform:rotate(360deg)}}</style>');

  setTimeout(() => {
    // Demo: check against stored user OR accept any valid-looking credentials
    const stored = localStorage.getItem('krishakUser');
    let ok = false;
    let user = null;

    if (stored) {
      try {
        user = JSON.parse(stored);
        const storedPhone = user.phone.replace(/\D/g,'');
        const storedPass  = atob(user.password || '');
        if (storedPhone.endsWith(phone) && storedPass === pass) ok = true;
      } catch(e) {}
    }

    // Demo fallback: any 10-digit phone + password of 6+ chars
    if (!ok && phone.length >= 10 && pass.length >= 6) {
      ok = true; // Demo mode
      user = { name: 'Farmer', lang: 'en' };
    }

    if (ok) {
      if (document.getElementById('remember').checked && user) {
        localStorage.setItem('krishakUser', JSON.stringify(user));
        localStorage.setItem('krishakLang', user.lang || 'en');
      }
      btn.innerHTML = '✓ Signed in! Redirecting...';
      btn.style.background = '#27ae60';
      showToast('✅ Welcome back!');
      setTimeout(() => { window.location.href = `home.html?lang=${user?.lang || 'en'}`; }, 1200);
    } else {
      btn.disabled = false;
      btn.innerHTML = 'Sign In →';
      showBanner('Invalid phone number or password. <a href="signup.html" style="color:var(--rust);font-weight:700;">Sign up instead?</a>');
    }
  }, 1600);
}

function togglePass() {
  const inp = document.getElementById('login-pass');
  const btn = event.currentTarget;
  if (inp.type === 'password') { inp.type = 'text'; btn.textContent = '🙈'; }
  else { inp.type = 'password'; btn.textContent = '👁️'; }
}

function clearBanner() {
  document.getElementById('error-banner').classList.remove('show');
  document.getElementById('login-phone').classList.remove('error');
  document.getElementById('login-pass').classList.remove('error');
  document.getElementById('lphone-err').classList.remove('show');
  document.getElementById('lpass-err').classList.remove('show');
}

function showBanner(msg) {
  document.getElementById('error-msg').innerHTML = msg;
  document.getElementById('error-banner').classList.add('show');
}

// ── OTP flow ──
let otpTimerInt = null;
let mockOTP = '';

function sendOTP() {
  const phone = document.getElementById('otp-phone').value.replace(/\D/g,'');
  if (phone.length < 10) { showToast('⚠️ Enter a valid 10-digit number'); return; }

  // Build OTP boxes
  const boxes = document.getElementById('otp-boxes');
  boxes.innerHTML = '';
  for (let i = 0; i < 6; i++) {
    const inp = document.createElement('input');
    inp.className = 'otp-box';
    inp.maxLength = 1;
    inp.inputMode = 'numeric';
    inp.dataset.idx = i;
    inp.addEventListener('input', e => {
      if (e.target.value && i < 5) boxes.children[i+1].focus();
    });
    inp.addEventListener('keydown', e => {
      if (e.key === 'Backspace' && !e.target.value && i > 0) boxes.children[i-1].focus();
    });
    boxes.appendChild(inp);
  }

  // Mock OTP generation
  mockOTP = String(Math.floor(100000 + Math.random() * 900000));
  showToast(`📱 Demo OTP: ${mockOTP}`);

  document.getElementById('otp-sent-to').textContent = `OTP sent to +91 ****${phone.slice(-4)}`;
  document.getElementById('otp-step-phone').style.display = 'none';
  document.getElementById('otp-step-verify').style.display = 'block';
  boxes.children[0].focus();

  startOTPTimer(60);
}

function startOTPTimer(secs) {
  const btn = document.getElementById('resend-btn');
  const timer = document.getElementById('otp-timer');
  btn.disabled = true;
  btn.style.opacity = '0.5';
  let rem = secs;
  otpTimerInt = setInterval(() => {
    rem--;
    timer.textContent = `Resend available in ${rem}s`;
    if (rem <= 0) {
      clearInterval(otpTimerInt);
      btn.disabled = false;
      btn.style.opacity = '1';
      timer.textContent = '';
    }
  }, 1000);
}

function resendOTP() {
  clearInterval(otpTimerInt);
  mockOTP = String(Math.floor(100000 + Math.random() * 900000));
  showToast(`📱 New Demo OTP: ${mockOTP}`);
  startOTPTimer(60);
  document.querySelectorAll('.otp-box').forEach(b => b.value = '');
  document.querySelector('.otp-box').focus();
}

function backToPhone() {
  document.getElementById('otp-step-phone').style.display = 'block';
  document.getElementById('otp-step-verify').style.display = 'none';
  clearInterval(otpTimerInt);
}

function verifyOTP() {
  const entered = Array.from(document.querySelectorAll('.otp-box')).map(b => b.value).join('');
  if (entered.length < 6) { showToast('⚠️ Enter all 6 digits'); return; }

  if (entered === mockOTP) {
    showToast('✅ OTP verified! Signing in...');
    setTimeout(() => {
      const lang = localStorage.getItem('krishakLang') || 'en';
      window.location.href = `home.html?lang=${lang}`;
    }, 1200);
  } else {
    document.querySelectorAll('.otp-box').forEach(b => { b.value = ''; b.classList.add('error'); });
    setTimeout(() => document.querySelectorAll('.otp-box').forEach(b => b.classList.remove('error')), 600);
    document.querySelector('.otp-box').focus();
    showToast('❌ Incorrect OTP. Try again.');
  }
}

function showForgot() {
  showToast('📱 Enter your mobile number to reset password via OTP');
  switchTab('otp');
}

function showToast(msg) {
  const t = document.getElementById('toast');
  t.textContent = msg;
  t.classList.add('show');
  setTimeout(() => t.classList.remove('show'), 3500);
}
</script>
</body>
</html>
