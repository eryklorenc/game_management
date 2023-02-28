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
  final controllerprice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('games').add(
            {
              'title': controller.text,
              'price': controllerprice.text,
            },
          );
          controller.clear();
          controllerprice.clear();
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance.collection('games').snapshots(),
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
                        document['price'].toString(),
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
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      hintText: 'Podaj nazwę gry',
                      filled: true,
                      fillColor: Color.fromARGB(255, 79, 218, 151),
                    ),
                    controller: controller,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      hintText: 'Podaj cenę',
                      filled: true,
                      fillColor: Color.fromARGB(255, 79, 218, 151),
                    ),
                    controller: controllerprice,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
