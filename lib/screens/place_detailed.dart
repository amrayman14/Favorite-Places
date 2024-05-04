import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceDetailedScreen extends StatelessWidget {
  const PlaceDetailedScreen({super.key, required this.place});
    final Place place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground
          ),
          ),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
          )
        ],
      )
    );
  }
}
