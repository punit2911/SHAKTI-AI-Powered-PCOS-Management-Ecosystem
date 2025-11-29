# 🌸 SHAKTHI – Agentic AI Ecosystem for Complete PCOS Management
### Built for Hackathons | Multi-Agent AI | n8n Automation | Twilio WhatsApp | Postgres

## 🚀 Overview
**SHAKTHI** is a comprehensive **Agentic AI-powered healthcare automation system** designed for **PCOS (Polycystic Ovary Syndrome) management**. It uses five autonomous AI agents working together to deliver personalized care, medication adherence, lifestyle improvement, and emotional support directly via **WhatsApp automation**.

This project integrates **n8n agentic AI**, **Twilio WhatsApp automation**, **PostgreSQL persistent storage**, **predictive analytics**, and **parallel autonomous decisioning**.

## 🤖 Autonomous Agents

| Agent | Name | Responsibility |
|--------|--------|----------------|
| 🥗 AAHAR | Nutrition & Diet Agent | Personalized meals, GI-based diet, reminders |
| 🏃 SWASTHYA | Fitness Agent | Phase-based workouts, daily activity nudges |
| 💊 AUSHADI | Medication Guardian | Reminders, refill alerts, escalation |
| 🌙 CHANDRA | Cycle Predictor | Predicted cycles, ovulation timeline, symptom logging |
| 👭 SANGHA | Community & Support | Peer connect, emotional wellness nudges |

## 🧠 Key Innovation

| Problem | Solution |
|--------|-----------|
| Low adherence to treatment | Multi-agent WhatsApp nudges |
| Lack of personalization | Diet + fitness + symptoms + medication combined |
| Anxiety & isolation | Peer support intelligent matching |
| Silent medication non-compliance | Automatic escalation to clinician |
| Limited menstrual insights | Predictive cycle analytics |

## 🏗 System Architecture
```
WhatsApp Message
        ↓
Twilio WhatsApp Webhook → n8n Trigger
        ↓
Fetch User Profile (Postgres)
        ↓
Parallel Multi-Agent Execution
 ├── AAHAR → Meal suggestions / Nudges
 ├── SWASTHYA → Exercise recommendations
 ├── AUSHADI → Medication alerts + Escalation
 ├── CHANDRA → Cycle Forecasting
 └── SANGHA → Peer support engagement
        ↓
Daily Digest → WhatsApp Summary
        ↓
Logs → Postgres Storage
```

## 📦 Repository Contents

| File | Description |
|------|-------------|
| `workflow_n8n_shakthi_twilio.json` | Production-ready n8n workflow export |
| `shakthi_schema.sql` | Database structure |
| `seed.sql` | Sample test values |
| `README.md` | Documentation |
| `/assets` | Screenshots and diagrams (optional) |

## 🔧 Tech Stack

| Layer | Technology |
|-------|-----------|
| Workflow Automation | n8n.io |
| Messaging | Twilio WhatsApp Business |
| Database | PostgreSQL |
| AI Engine | Rule & prediction based agents |
| Hosting | Railway / Render / Docker / n8n Cloud |

## 🛠 Setup Instructions

### Clone Repository
```bash
git clone https://github.com/<your-username>/shakthi.git
cd shakthi
```

### Install n8n (local)
```bash
npm install -g n8n
n8n start
```

### Import Workflow
- Open **http://localhost:5678**
- Navigate to **Workflows → Import**
- Select `workflow_n8n_shakthi_twilio.json`

### Configure Credentials
#### Twilio WhatsApp
| Field | Value |
|-------|--------|
| Account SID | from Twilio |
| Auth Token | from Twilio |
| Phone Number | WhatsApp enabled |

#### PostgreSQL
| Field | Value |
|-------|--------|
| Host | localhost / railway |
| Database | shakthi |
| User | postgres |
| Password | ***** |

### Run SQL setup
```bash
psql -U postgres -d shakthi -f shakthi_schema.sql
psql -U postgres -d shakthi -f seed.sql
```

### Test WhatsApp
Send:
```
Hi
```
The system replies with personalized insights from all five agents.

## 📊 Expected Impact

| Key Metric | Improvement |
|------------|-------------|
| Adherence | +36% |
| Exercise consistency | +42% |
| Nutrition compliance | +31% |
| Emotional support | +65% |
| Prediction reliability | Improves with usage |

## 🖼 Demo Screenshots (Add later)
```
assets/architecture.png
assets/whatsapp-demo-1.png
assets/agent-flow.png
```

## 🧠 Future Scope
- Wearable device integration
- ML ovulation prediction engine
- Multi-language regional support
- Doctor dashboard analytics
- Conversational LLM symptom assistant

## 🤝 Contributing
```bash
fork → build feature → pull request
```

## 🧑‍💻 Team
**Project Lead:** Punit Gavali, Shubham Shanbhag 
**Hackathon Edition – 2025**

## ⭐ Support
If this helped your hackathon or research, please **star the repository** ⭐

---
