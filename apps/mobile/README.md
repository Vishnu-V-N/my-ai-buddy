# Flutter mobile app (Hey Hero)

## Setup
1. Install Flutter: https://docs.flutter.dev/get-started/install
2. From this folder run:
   ```bash
   flutter create . --project-name hey_hero
   flutter pub get
   cp .env.example .env
   flutter run
   ```
3. `flutter create .` generates `android/`, `ios/`, etc. without overwriting `lib/` and `pubspec.yaml` if you confirm carefully — prefer running it once on a fresh clone.

## Current screens
- **Today** — mock morning briefing dashboard
- **Hero** — local mock chat (workout / day / AI news replies)

## Next
- Wire Supabase auth
- Gemini chat edge function
- Habits + workouts CRUD
