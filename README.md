# my-ai-buddy

**Hey Hero** - your personal AI Life Operating System.

Personal AI chat assistant for daily life, health, work, and personalized news.

> Hey Vishnu! 👋 What can I help you with today?

---

## What is Hey Hero?

A single place to manage your day, track health, stay informed on topics you care about, and talk to an AI assistant naturally - starting with *"Hey Hero"*.

### Example

```
You:  Hey Hero, what's today's update?
Hero: Here's your day:
      📅 2 meetings
      💧 Drink water in 20 minutes
      🏋️ Today's workout is Back & Biceps
      📧 3 important emails
      💼 2 Jira tickets pending
      ☁️ GCP: No critical alerts
      🌦️ Rain expected at 6 PM
```

---

## Modules

| Area | Features |
|------|----------|
| 🤖 Core AI | Chat, voice, memory, daily summaries |
| 📅 Productivity | Calendar, meetings, reminders, habits, notes |
| 💪 Health | Apple Health, AI workouts, water, sleep, steps |
| 💼 Work | GitHub, Jira, Gmail/Outlook |
| ☁️ Cloud & DevOps | AWS / GCP / Azure / Kubernetes news & alerts |
| 📰 News | Personalized topics (AI, cloud, sports, finance…) |
| 🌤 Daily life | Weather, traffic, birthdays, travel |
| 📊 Dashboard | Day overview, health, tasks, news, productivity score |

---

## Tech stack

| Layer | Choice |
|-------|--------|
| Mobile | Flutter (iOS + Android) |
| Backend | Supabase |
| Database | PostgreSQL (via Supabase) |
| Auth | Google + Apple Sign-In |
| AI | Gemini API (or OpenAI) |
| Storage | Supabase Storage |
| Edge | Supabase Edge Functions / Cloudflare Workers |
| CI/CD | GitHub Actions |

---

## Project layout

```
my-ai-buddy/
├── apps/mobile/       # Flutter app
├── supabase/          # Schema, migrations, edge functions
├── docs/              # Vision, roadmap, architecture
└── README.md
```

---

## Roadmap

### v1 - MVP
AI Chat · Calendar · Reminders · Habits · Workout generator · Apple Health · Daily summary

### v2
Gmail · GitHub · Jira · Personalized tech news · Voice assistant

### v3
Android polish · Family accounts · Premium AI · Smart automation

Details: [docs/ROADMAP.md](docs/ROADMAP.md) · [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) · [docs/MODULES.md](docs/MODULES.md)

---

## Getting started

```bash
# Flutter
cd apps/mobile
flutter pub get
flutter run

# Supabase (local)
cd ../../supabase
supabase start
supabase db reset
```

Copy `.env.example` → `.env` and add your Supabase + Gemini keys.

---

## Author

Built by Vishnu · [Vishnu-V-N](https://github.com/Vishnu-V-N)
