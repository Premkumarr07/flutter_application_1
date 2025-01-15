import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Vyayam',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add functionality for the mat symbol
            },
            icon: SvgPicture.asset(
              'assets/fitness.svg', // Correct path
              width: 24,
              height: 24,
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  // Add functionality for notifications
                },
                icon: const Icon(Icons.notifications_outlined,
                    color: Colors.black),
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Vyayam!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Choose from a variety of courses and live sessions to improve your fitness journey.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            // Courses Section - Horizontal Scroll
            const Text(
              'Courses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            
            _buildHorizontalListView([
              _buildCard('Yoga for Beginners',
                  'lib/assets/images/pexels-elly-fairytale-3823076.jpg'),
              _buildCard('Advanced Yoga',
                  'lib/assets/images/pexels-marcus-aurelius-6787202.jpg'),
              _buildCard('Meditation Basics',
                  'lib/assets/images/pexels-miriam-alonso-7592468.jpg'),
              _buildCard('Asana Meditation',
                  'lib/assets/images/pexels-vo-van-ti-n-2037497312-29934040.jpg'),
              _buildCard('Aana Meditation',
                  'lib/assets/images/pexels-vo-van-ti-n-2037497312-29934040.jpg'),
              _buildCard('Asana Meditation',
                  'lib/assets/images/pexels-vo-van-ti-n-2037497312-29934040.jpg')
            ]),
            const SizedBox(height: 20),
            const Text(
              'Live Sessions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            _buildHorizontalListView([
              _buildCard('Morning Yoga Live',
                  'lib/assets/images/pexels-ron-lach-9225406.jpg'),
              _buildCard('Evening Meditation',
                  'lib/assets/images/pexels-vo-van-ti-n-2037497312-29934040.jpg'),
              _buildCard('Power Yoga Live',
                  'lib/assets/images/pexels-vo-van-ti-n-2037497312-29934040.jpg'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalListView(List<Widget> items) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal, // Ensure it's horizontal
        children: items,
      ),
    );
  }

  Widget _buildCard(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                height: 90,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
