import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LibraryPageContent extends StatefulWidget {
  const LibraryPageContent({
    super.key,
  });

  @override
  State<LibraryPageContent> createState() => _LibraryPageContentState();
}

class _LibraryPageContentState extends State<LibraryPageContent> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('games').add(
            {
              'title': controller.text,
            },
          );
          controller.clear();
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream:
                  FirebaseFirestore.instance.collection('games').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Błąd');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text('Loading');
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
                        child: GameList(document['title']),
                      ),
                    ],
                    TextField(
                      controller: controller,
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}

class GameList extends StatelessWidget {
  const GameList(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          width: 150,
          image: AssetImage('assets/jpg1.jpg'),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Cena: 100zł',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
