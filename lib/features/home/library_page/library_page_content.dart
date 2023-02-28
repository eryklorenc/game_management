import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_management/features/home/library_page/game_list.dart';

class LibraryPageContent extends StatefulWidget {
  const LibraryPageContent({
    super.key,
  });

  @override
  State<LibraryPageContent> createState() => _LibraryPageContentState();
}

class _LibraryPageContentState extends State<LibraryPageContent> {
  final controller = TextEditingController();
  final controllerstatus = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('games').add(
            {
              'title': controller.text,
              'status': controllerstatus.text,
            },
          );
          controller.clear();
          controllerstatus.clear();
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/wallpaper8.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream:
                    FirebaseFirestore.instance.collection('games').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(child: Text('Something went wrong'));
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: Text('Loading'));
                  }

                  final documents = snapshot.data!.docs;

                  return ListView(
                    children: [
                      for (final document in documents) ...[
                        Dismissible(
                          key: ValueKey(document.id),
                          onDismissed: (_) {
                            FirebaseFirestore.instance
                                .collection('games')
                                .doc(document.id)
                                .delete();
                          },
                          child: GameList(
                            document['title'],
                            document['status'],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        )
                      ],
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.greenAccent),
                          ),
                          hintText: 'Nazwa gry',
                          filled: true,
                          fillColor: Colors.transparent,
                        ),
                        controller: controller,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.greenAccent),
                          ),
                          hintText: 'Ukończona? Nieukończona?',
                        ),
                        controller: controllerstatus,
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
