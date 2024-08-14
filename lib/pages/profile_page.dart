import 'package:fajna_apka/core/constants.dart';
import 'package:fajna_apka/core/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        titleTextStyle: const TextStyle(fontSize: 30, letterSpacing: 3),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.amber,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Info"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: kDouble20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
              'images/zoe.png',
            ),
            radius: 80,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Kajo'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('kajo.programmer@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('youtube/kajo.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
