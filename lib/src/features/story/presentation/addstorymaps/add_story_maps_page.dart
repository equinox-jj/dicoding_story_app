import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddStoryMapsPage extends StatefulWidget {
  const AddStoryMapsPage({super.key});

  @override
  State<AddStoryMapsPage> createState() => _AddStoryMapsPageState();
}

class _AddStoryMapsPageState extends State<AddStoryMapsPage> {
  late final GoogleMapController googleMapController;

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Location'),
      ),
      body: Center(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(
                  0.0,
                  0.0,
                ),
              ),
              onMapCreated: (controller) {
                googleMapController = controller;
              },
              onLongPress: (latlng) {},
            )
          ],
        ),
      ),
    );
  }
}
