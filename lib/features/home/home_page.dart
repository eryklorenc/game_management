import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_management/features/auth/user_profile.dart';
import 'package:game_management/features/home/library_page/library_page_content.dart';
import 'package:game_management/features/home/wishlist/wishlist_page_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  final usersQuery = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return const LibraryPageContent();
        }
        if (currentIndex == 1) {
          return const WishlistPageContent();
        }
        if (currentIndex == 2) {
          return const UserProfileScreen();
        }
        return const Center();
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Biblioteka',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Lista życzeń',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
