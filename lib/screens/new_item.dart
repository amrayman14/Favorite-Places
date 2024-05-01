import 'package:flutter/material.dart';

class AddNewItem extends StatefulWidget {
  const AddNewItem({super.key});

  @override
  State<AddNewItem> createState() => _AddNewItemState();
}

class _AddNewItemState extends State<AddNewItem> {
  var _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Place"),),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration:  InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(color: Theme.of(context).colorScheme.onBackground)
              ),
            ),
            const SizedBox(height: 16,),
            ElevatedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.add),
              label: const Text("Add Place"),
            )
          ],
        ),
      ),
    );
  }
}
