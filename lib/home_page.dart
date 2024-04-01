import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/detail_page.dart';
import 'package:riverpod_tutorial/name.dart';

class Homepage extends ConsumerWidget {
  Homepage({super.key});

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(nameProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter your name"),
            TextField(
              controller: myController,
            ),
            TextButton(
              child: Text("add name"),
              onPressed: () {
                //save it to our riverpod provider
                ref.read(nameProvider.notifier).changeName(myController.text);
              },
            ),
            TextButton(
              child: Text("See Detals"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
