import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/place_provider.dart';
import 'package:favorite_places/widgets/input_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNewItem extends ConsumerStatefulWidget {
  const AddNewItem({super.key});

  @override
  ConsumerState<AddNewItem> createState() => _AddNewItemState();
}

class _AddNewItemState extends ConsumerState<AddNewItem> {
  final _titleController = TextEditingController();
   File? _image;
  void _saveItem() {
    final enteredTitle = _titleController.text;
    if (_image == null || enteredTitle.isEmpty) {
      return;
    } else {
      ref.read(placeProvider.notifier).addPlace(Place(title: enteredTitle,
          image: _image!));
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            const SizedBox(
              height: 16,
            ),
             InputPicture(
              onPickImage: (File image) {
                _image = image;
              },),
            const SizedBox(height: 16,),
            ElevatedButton.icon(
              onPressed: _saveItem,
              icon: const Icon(Icons.add),
              label: const Text("Add Place"),
            )
          ],
        ),
      ),
    );
  }
}
