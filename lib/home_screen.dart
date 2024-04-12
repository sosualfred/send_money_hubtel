import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.tune_rounded,
                      size: 34,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Center(
                child: Text(
                  'You have pushed the button this many times:',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
