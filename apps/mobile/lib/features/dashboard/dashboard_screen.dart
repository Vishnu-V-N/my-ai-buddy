import 'package:flutter/material.dart';

/// Placeholder dashboard for MVP — schedule, health, habits, news.
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = const [
      ('📅', '2 meetings today'),
      ('💧', 'Drink water in 20 minutes'),
      ('🏋️', "Today's workout: Back & Biceps"),
      ('📧', '3 important emails'),
      ('💼', '2 Jira tickets pending'),
      ('☁️', 'GCP: No critical alerts'),
      ('🌦️', 'Rain expected at 6 PM'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hey Hero'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Good morning, Vishnu! ☀️',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            "Here's your day",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: 24),
          ...items.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.$1, style: const TextStyle(fontSize: 22)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(e.$2, style: Theme.of(context).textTheme.titleMedium),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
