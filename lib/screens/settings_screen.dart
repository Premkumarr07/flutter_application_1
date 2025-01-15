import 'package:flutter/material.dart';
import 'account_screen.dart'; // Ensure the import is correct

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
            icon:
                const Icon(Icons.fitness_center_outlined, color: Colors.black),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        children: [
          // Account
          ListTile(
            leading: const Icon(Icons.person_outline, color: Colors.green),
            title: const Text(
              'Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Navigate to AccountScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountScreen()),
              );
            },
          ),
          const Divider(),
          // Subscribe
          ListTile(
            leading:
                const Icon(Icons.subscriptions_outlined, color: Colors.green),
            title: const Text(
              'Subscribe',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Navigate to Subscribe screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help_outline, color: Colors.green),
            title: const Text(
              'Help',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Navigate to Help screen
            },
          ),
          const Divider(),
          // Language Selection
          ListTile(
            leading: const Icon(Icons.language, color: Color(0xFF4CAF50)),
            title: const Text(
              'Language Selection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Navigate to Language Selection screen
            },
          ),
          const Divider(),
          // Logout
          ListTile(
            leading: const Icon(Icons.logout, color: Color(0xFF4CAF50)),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              _showLogoutDialog(context); // Show confirmation dialog
            },
          ),
          const Divider(),

          // Other options...
        ],
      ),
    );
  }
}

// Function to show a logout confirmation dialog
void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
              _performLogout(context); // Call logout logic
            },
            child: const Text('Logout',
                style: TextStyle(color: Color(0xFF4CAF50))),
          ),
        ],
      );
    },
  );
}

// Function to handle logout logic
void _performLogout(BuildContext context) {
  // Clear user data or tokens here
  // Navigate to the Login Screen
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => LoginScreen()),
  );
}

// Mock Login Screen for demonstration
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Login Screen',
          style: TextStyle(fontSize: 24, color: Colors.green),
        ),
      ),
    );
  }
}
