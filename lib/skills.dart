import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSkillRow('Flutter & Dart Development', 0.9, Colors.orangeAccent),
            _buildSkillRow('UI/UX Design', 0.8, Colors.greenAccent),
            _buildSkillRow('RESTful APIs Integration', 0.85, Colors.blueAccent),
            _buildSkillRow('State Management (Provider, Riverpod)', 0.75, Colors.purpleAccent),
            _buildSkillRow('Git & Version Control', 0.8, Colors.yellowAccent),
            _buildSkillRow('Firebase Services', 0.7, Colors.tealAccent),
            _buildSkillRow('Problem Solving', 0.95, Colors.pinkAccent),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillRow(String skill, double level, Color color) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: level,
              minHeight: 10,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
            const SizedBox(height: 8),
            Text('${(level * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                )),
          ],
        ),
      ),
    );
  }
}
