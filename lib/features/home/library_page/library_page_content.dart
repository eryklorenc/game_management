import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/features/home/library_page/game_list.dart';

import 'cubit/library_page_cubit.dart';

class LibraryPageContent extends StatefulWidget {
  const LibraryPageContent({
    super.key,
  });

  @override
  State<LibraryPageContent> createState() => _LibraryPageContentState();
}

final controller = TextEditingController();
final controllerstatus = TextEditingController();

class _LibraryPageContentState extends State<LibraryPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: BlocProvider(
        create: (context) => LibraryPageCubit(),
        child: BlocBuilder<LibraryPageCubit, LibraryPageState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<LibraryPageCubit>().add();
                controller.clear();
                controllerstatus.clear();
              },
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/wallpaper8.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocProvider(
              create: (context) => LibraryPageCubit()..start(),
              child: BlocBuilder<LibraryPageCubit, LibraryPageState>(
                builder: (context, state) {
                  if (state.errorMessage.isNotEmpty) {
                    return Center(
                      child:
                          Text('Something went wrong: ${state.errorMessage}'),
                    );
                  }

                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final itemModels = state.items;

                  return ListView(
                    children: [
                      for (final itemModel in itemModels) ...[
                        Dismissible(
                          key: ValueKey(itemModel.id),
                          onDismissed: (_) {
                            FirebaseFirestore.instance
                                .collection('games')
                                .doc(itemModel.id)
                                .delete();
                          },
                          child: GameList(
                            itemModel.title,
                            itemModel.status,
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
                                BorderSide(width: 2, color: Colors.greenAccent),
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
                                BorderSide(width: 2, color: Colors.greenAccent),
                          ),
                          hintText: 'Ukończona? Nieukończona?',
                        ),
                        controller: controllerstatus,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
