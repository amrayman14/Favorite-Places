import 'package:favorite_places/models/place.dart';
import 'package:riverpod/riverpod.dart';

class PlaceNotifier extends StateNotifier<List<Place>>{
  PlaceNotifier() : super([]);

  void addPlace(Place place){
    state = [place , ...state];
  }
}

final placeProvider = StateNotifierProvider<PlaceNotifier , List<Place>>
  ((ref) => PlaceNotifier());