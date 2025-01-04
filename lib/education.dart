import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEducationCard(
              title: '🎓 Matriculation',
              institution: 'PIPS School SYSTEM',
              year: '2017 - 2019',
            ),
            const SizedBox(height: 16),
            _buildEducationCard(
              title: '🏫 Intermediate',
              institution: 'UNIQUE COLLEGE',
              year: '2019 - 2021',
            ),
            const SizedBox(height: 16),
            _buildEducationCard(
              title: '🎓 Bachelors (Ongoing)',
              institution: 'University Of Lahore',
              year: '2022 - Continue',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationCard({
    required String title,
    required String institution,
    required String year,
  }) {
    return Card(
      color: Colors.white,
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
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              institution,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              year,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
