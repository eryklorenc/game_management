import 'package:flutter/material.dart';

class WishlistPageContent extends StatefulWidget {
  const WishlistPageContent({
    super.key,
  });

  @override
  State<WishlistPageContent> createState() => _WishlistPageContentState();
}

class _WishlistPageContentState extends State<WishlistPageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(hintText: 'Nazwa gry'),
            onChanged: (newValue) {},
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Dodaj'))
        ],
      ),
    );
  }
}
