import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';

import 'new_item.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places List"),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const AddNewItem())
                );
              },
              icon: const Icon(Icons.add)
          )
        ],
      ),
      body: PlacesList(places: [],),
    );
  }
}
