import 'package:flutter/material.dart';
import 'package:trips_app/constants/colors.dart';
import '../constants/places_location.dart';

class ListViewImages extends StatelessWidget {
  const ListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) => Container(
        height: 300,
        width: 250,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.only(left: 10, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(places[index]['image']!),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              places[index]['placeName']!,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: white
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.location_on,
                  color: white,
                ),
                Text(
                  places[index]['placeLocation']!,
                  style: const TextStyle(
                    fontSize: 14,
                    color: white
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
