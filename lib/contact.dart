import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Information'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 1, // Single column for focus and readability
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 3.5, // Spacious cards
          children: [
            _buildContactCard(
              icon: Icons.email,
              title: 'Email',
              value: 'rehan00078@gmail.com',
              color: Colors.deepPurpleAccent,
            ),
            _buildContactCard(
              icon: Icons.phone,
              title: 'Phone',
              value: '+92 311-4527509',
              color: Colors.green,
            ),
            _buildContactCard(
              icon: Icons.location_on,
              title: 'Address',
              value: 'Park View City, Lahore',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
