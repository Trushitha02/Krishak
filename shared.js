const TRANSLATIONS = {
  en: {
    appName: "Krishak",
    tagline: "Smart Farming Assistant",
    home: "Home", calendar: "Calendar", climate: "Climate",
    soil: "Soil", market: "Market", power: "Power",
    loading: "Loading...", error: "Something went wrong.",
    chooseLanguage: "Choose Your Language",
    welcomeMsg: "Welcome to Krishak — your AI farming companion",
    marketNews: "Market News & Offers",
    latestTrends: "Latest Market Trends",
    seedDiscounts: "Seed Discounts",
    quickTools: "Quick Tools",
    cropCalendar: "Crop Calendar",
    climateAlerts: "Climate Alerts",
    soilAssessment: "Soil Assessment",
    marketPrices: "Market Prices",
    powerSchedule: "Power Schedule",
    askAI: "Ask AI Assistant",
    sending: "Sending...",
    nitrogen: "Nitrogen (N)", phosphorus: "Phosphorus (P)", potassium: "Potassium (K)",
    getRecommendations: "Get AI Recommendations",
    suitableCrops: "Suitable Crops",
    soilImprovement: "Soil Improvement",
    shopName: "Shop Name", location: "Location", contact: "Contact",
    powerOn: "Power On", powerOff: "Power Off", maintenance: "Maintenance",
    today: "Today", week: "This Week",
    temperature: "Temperature", humidity: "Humidity", windSpeed: "Wind Speed",
    weatherAlerts: "Weather Alerts", currentWeather: "Current Weather",
    frost: "Frost Advisory", rain: "Rain Expected", drought: "Drought Warning",
    planting: "Planting", vegetative: "Vegetative", flowering: "Flowering", harvest: "Harvest",
  },
  te: {
    appName: "కృషక్",
    tagline: "స్మార్ట్ వ్యవసాయ సహాయకుడు",
    home: "హోమ్", calendar: "కాలెండర్", climate: "వాతావరణం",
    soil: "నేల", market: "మార్కెట్", power: "విద్యుత్",
    loading: "లోడ్ అవుతోంది...", error: "ఏదో తప్పు జరిగింది.",
    chooseLanguage: "మీ భాషను ఎంచుకోండి",
    welcomeMsg: "కృషక్‌కు స్వాగతం — మీ AI వ్యవసాయ సహాయకుడు",
    marketNews: "మార్కెట్ వార్తలు & ఆఫర్లు",
    latestTrends: "తాజా మార్కెట్ ట్రెండ్లు",
    seedDiscounts: "విత్తన తగ్గింపులు",
    quickTools: "త్వరిత సాధనాలు",
    cropCalendar: "పంట కాలెండర్",
    climateAlerts: "వాతావరణ హెచ్చరికలు",
    soilAssessment: "నేల మూల్యాంకనం",
    marketPrices: "మార్కెట్ ధరలు",
    powerSchedule: "విద్యుత్ షెడ్యూల్",
    askAI: "AI సహాయకుడిని అడగండి",
    sending: "పంపుతోంది...",
    nitrogen: "నత్రజని (N)", phosphorus: "భాస్వరం (P)", potassium: "పొటాషియం (K)",
    getRecommendations: "AI సిఫార్సులు పొందండి",
    suitableCrops: "అనుకూల పంటలు",
    soilImprovement: "నేల మెరుగుదల",
    shopName: "దుకాణం పేరు", location: "స్థానం", contact: "సంప్రదింపు",
    powerOn: "విద్యుత్ ఆన్", powerOff: "విద్యుత్ ఆఫ్", maintenance: "నిర్వహణ",
    today: "ఈరోజు", week: "ఈ వారం",
    temperature: "ఉష్ణోగ్రత", humidity: "తేమ", windSpeed: "గాలి వేగం",
    weatherAlerts: "వాతావరణ హెచ్చరికలు", currentWeather: "ప్రస్తుత వాతావరణం",
    frost: "మంచు హెచ్చరిక", rain: "వర్షం అంచనా", drought: "కరువు హెచ్చరిక",
    planting: "నాటడం", vegetative: "పెరుగుదల", flowering: "పుష్పించడం", harvest: "పంట కోత",
  },
  hi: {
    appName: "कृषक",
    tagline: "स्मार्ट खेती सहायक",
    home: "होम", calendar: "कैलेंडर", climate: "जलवायु",
    soil: "मिट्टी", market: "बाज़ार", power: "बिजली",
    loading: "लोड हो रहा है...", error: "कुछ गलत हुआ।",
    chooseLanguage: "अपनी भाषा चुनें",
    welcomeMsg: "कृषक में आपका स्वागत है — आपका AI खेती सहायक",
    marketNews: "बाज़ार समाचार और ऑफर",
    latestTrends: "नवीनतम बाज़ार रुझान",
    seedDiscounts: "बीज छूट",
    quickTools: "त्वरित उपकरण",
    cropCalendar: "फसल कैलेंडर",
    climateAlerts: "जलवायु अलर्ट",
    soilAssessment: "मिट्टी मूल्यांकन",
    marketPrices: "बाज़ार भाव",
    powerSchedule: "बिजली शेड्यूल",
    askAI: "AI सहायक से पूछें",
    sending: "भेज रहे हैं...",
    nitrogen: "नाइट्रोजन (N)", phosphorus: "फास्फोरस (P)", potassium: "पोटैशियम (K)",
    getRecommendations: "AI सिफारिशें पाएं",
    suitableCrops: "उपयुक्त फसलें",
    soilImprovement: "मिट्टी सुधार",
    shopName: "दुकान का नाम", location: "स्थान", contact: "संपर्क",
    powerOn: "बिजली चालू", powerOff: "बिजली बंद", maintenance: "रखरखाव",
    today: "आज", week: "इस सप्ताह",
    temperature: "तापमान", humidity: "आर्द्रता", windSpeed: "हवा की गति",
    weatherAlerts: "मौसम अलर्ट", currentWeather: "वर्तमान मौसम",
    frost: "पाला चेतावनी", rain: "बारिश की उम्मीद", drought: "सूखा चेतावनी",
    planting: "बुआई", vegetative: "वृद्धि", flowering: "फूल", harvest: "कटाई",
  }
};

function getLang() {
  const params = new URLSearchParams(window.location.search);
  return params.get('lang') || localStorage.getItem('krishakLang') || 'en';
}

function t(key) {
  const lang = getLang();
  return (TRANSLATIONS[lang] && TRANSLATIONS[lang][key]) || TRANSLATIONS['en'][key] || key;
}

function setLang(lang) {
  localStorage.setItem('krishakLang', lang);
}

function navLink(page) {
  return `${page}?lang=${getLang()}`;
}

// Shared nav HTML injector
function injectNav(activePage) {
  const pages = [
    { id: 'home', icon: '⌂', file: 'home.html' },
    { id: 'calendar', icon: '◷', file: 'calender.html' },
    { id: 'climate', icon: '◈', file: 'climate.html' },
    { id: 'soil', icon: '◉', file: 'soil.html' },
    { id: 'market', icon: '◎', file: 'market.html' },
    { id: 'power', icon: '⚡', file: 'power.html' },
  ];
  const nav = document.getElementById('main-nav');
  if (!nav) return;
  nav.innerHTML = `
    <div class="nav-inner">
      <a href="home.html?lang=${getLang()}" class="nav-brand">
        <span class="brand-leaf">🌱</span>
        <span class="brand-name">${t('appName')}</span>
      </a>
      <div class="nav-links">
        ${pages.map(p => `
          <a href="${p.file}?lang=${getLang()}" class="nav-link ${activePage === p.id ? 'active' : ''}">
            <span class="nav-icon">${p.icon}</span>
            <span class="nav-label">${t(p.id)}</span>
          </a>
        `).join('')}
      </div>
      <div class="nav-lang">
        <select onchange="changeLang(this.value)">
          <option value="en" ${getLang()==='en'?'selected':''}>EN</option>
          <option value="te" ${getLang()==='te'?'selected':''}>తె</option>
          <option value="hi" ${getLang()==='hi'?'selected':''}>हि</option>
        </select>
      </div>
    </div>
  `;
}

function changeLang(lang) {
  setLang(lang);
  const url = new URL(window.location.href);
  url.searchParams.set('lang', lang);
  window.location.href = url.toString();
}

// AI Chat utility
async function callAI(prompt, systemPrompt = '') {
  const res = await fetch('https://api.anthropic.com/v1/messages', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      model: 'claude-sonnet-4-20250514',
      max_tokens: 1000,
      system: systemPrompt || `You are Krishak, a smart AI farming assistant for Indian farmers. 
        Respond concisely and practically. Current language: ${getLang()}. 
        If the language is 'te', respond in Telugu. If 'hi', respond in Hindi. Otherwise English.
        Always give actionable advice relevant to Indian farming conditions.`,
      messages: [{ role: 'user', content: prompt }]
    })
  });
  const data = await res.json();
  return data.content?.[0]?.text || t('error');
}
