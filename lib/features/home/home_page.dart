import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_management/features/auth/user_profile.dart';
import 'package:game_management/features/home/library_page/library_page_content.dart';
import 'package:game_management/features/home/wish_list/wish_list_page_content.dart';
import 'package:game_management/generated/l10n.dart';

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
          return const WishListPageContent();
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
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.library_add),
            label: S.of(context).library,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.store),
            label: S.of(context).wishList,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: S.of(context).profile,
          ),
        ],
      ),
    );
  }
}
