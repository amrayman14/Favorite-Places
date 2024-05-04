import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/place_provider.dart';
import 'new_item.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInput = ref.watch(placeProvider);
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
      body: PlacesList(places: userInput,),
    );
  }
}
