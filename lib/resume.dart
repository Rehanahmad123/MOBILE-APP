import 'package:flutter/material.dart';
import 'contact.dart';
import 'education.dart';
import 'skills.dart';
import 'language.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REHAN RESUME'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.count(
        crossAxisCount: 2, // Set to 2 for a grid with 2 items per row
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildGridItem(
            context,
            'Contact Information',
            Colors.orangeAccent,
            const ContactInformation(),
          ),
          _buildGridItem(
            context,
            'Education',
            Colors.greenAccent,
            const Education(),
          ),
          _buildGridItem(
            context,
            'Skills',
            Colors.blueAccent,
            const SkillsScreen(),
          ),
          _buildGridItem(
            context,
            'Language',
            Colors.purpleAccent,
            const Language(),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, Color color, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
