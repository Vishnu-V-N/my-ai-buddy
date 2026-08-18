# Architecture

## High-level

```
┌─────────────────┐
│  Flutter App    │  iOS + Android
│  (Hey Hero UI)  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│    Supabase     │  Auth · Postgres · Storage · Realtime
│  Edge Functions │  AI orchestration · webhooks · news jobs
└────────┬────────┘
         │
    ┌────┴────┐
    ▼         ▼
 Gemini     External APIs
 (chat)   Calendar · Health · Gmail · GitHub · Jira · News · Weather
```

## Principles
1. **Modules first** — each domain owns its tables and services.
2. **Chat is the shell** — Hero composes module data into natural answers.
3. **User preferences drive news & recommendations.**
4. **Secrets stay server-side** — API keys in Edge Functions / env, never in the app binary.

## Suggested data domains (Postgres)
- `profiles` — user + preferences + interest topics
- `habits`, `habit_logs`
- `workouts`, `workout_sessions`
- `reminders`
- `chat_messages`, `ai_memories`
- `news_topics`, `news_items` (cached)
- Integration tokens stored encrypted / via OAuth providers

## Mobile app structure (Flutter)
```
apps/mobile/lib/
  main.dart
  app.dart
  core/          # theme, router, env, supabase client
  features/
    chat/
    dashboard/
    habits/
    workouts/
    calendar/
    news/
    settings/
```
