import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Languages'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 1, // Single-column grid for focus
          crossAxisSpacing: 16.0, // Space between columns
          mainAxisSpacing: 16.0, // Space between rows
          childAspectRatio: 3, // Adjust aspect ratio for better fit
          children: [
            _buildLanguageCard('🇬🇧 ENGLISH', 0.75),
            _buildLanguageCard('🇵🇰 URDU', 1.0),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageCard(String language, double proficiency) {
    return Card(
      color: Colors.white, // White background for a decent look
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Smoother card edges
      ),
      elevation: 6.0, // A subtle shadow for depth
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              language,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: proficiency,
              backgroundColor: Colors.grey[300],
              color: Colors.blueAccent,
              minHeight: 8,
              borderRadius: BorderRadius.circular(8),
            ),
            const SizedBox(height: 8),
            Text(
              '${(proficiency * 100).toStringAsFixed(0)}%',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
