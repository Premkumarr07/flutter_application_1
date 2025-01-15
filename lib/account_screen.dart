import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profile Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Name Section
            ListTile(
              leading: const Icon(Icons.person, color: Colors.green),
              title: const Text('Name', style: TextStyle(fontSize: 18)),
              subtitle: const Text('John Doe'),
              trailing: IconButton(
                icon: const Icon(Icons.edit, color: Colors.black),
                onPressed: () {
                  // Add functionality to edit the name
                },
              ),
            ),
            const Divider(),

            // Email Section
            ListTile(
              leading: const Icon(Icons.email, color: Colors.green),
              title: const Text('Email', style: TextStyle(fontSize: 18)),
              subtitle: const Text('john.doe@example.com'),
              trailing: IconButton(
                icon: const Icon(Icons.edit, color: Colors.black),
                onPressed: () {
                  // Add functionality to edit the email
                },
              ),
            ),
            const Divider(),

            // Password Section
            ListTile(
              leading: const Icon(Icons.lock, color: Colors.green),
              title: const Text('Password', style: TextStyle(fontSize: 18)),
              subtitle: const Text('********'),
              trailing: IconButton(
                icon: const Icon(Icons.edit, color: Colors.black),
                onPressed: () {
                  // Add functionality to reset the password
                },
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
