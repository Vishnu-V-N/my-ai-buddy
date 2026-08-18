import 'package:flutter/material.dart';

/// Local mock chat until Gemini + Supabase wiring lands.
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _controller = TextEditingController();
  final _messages = <_ChatMessage>[
    _ChatMessage(
      fromHero: true,
      text: 'Hey Vishnu! 👋 What can I help you with today?',
    ),
  ];

  void _send() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add(_ChatMessage(fromHero: false, text: text));
      _messages.add(_ChatMessage(fromHero: true, text: _mockReply(text)));
      _controller.clear();
    });
  }

  String _mockReply(String input) {
    final lower = input.toLowerCase();
    if (lower.contains('workout')) {
      return "Based on your previous workouts, sleep, and recovery, here's today's plan: Back & Biceps. Ready when you are.";
    }
    if (lower.contains('update') || lower.contains('day')) {
      return "Here's your day:\n📅 2 meetings\n💧 Drink water in 20 minutes\n🏋️ Back & Biceps\n📧 3 important emails\n💼 2 Jira tickets\n☁️ GCP: No critical alerts\n🌦️ Rain at 6 PM";
    }
    if (lower.contains('news') || lower.contains('ai')) {
      return "Top AI stories today (mock):\n• OpenAI announced a new model\n• Google released a Gemini update\n• Anthropic launched a Claude feature";
    }
    return "Got it. Full AI replies will connect via Gemini soon. Try: \"what's today's update?\" or \"generate today's workout.\"";
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat with Hero')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, i) {
                final m = _messages[i];
                return Align(
                  alignment:
                      m.fromHero ? Alignment.centerLeft : Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width * 0.8,
                    ),
                    decoration: BoxDecoration(
                      color: m.fromHero
                          ? Theme.of(context).colorScheme.surfaceContainerHighest
                          : Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(m.text),
                  ),
                );
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Hey Hero, ...',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    onPressed: _send,
                    icon: const Icon(Icons.send),
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

class _ChatMessage {
  const _ChatMessage({required this.fromHero, required this.text});

  final bool fromHero;
  final String text;
}
