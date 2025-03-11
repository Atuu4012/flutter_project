import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MaMap extends StatefulWidget {
  const MaMap({super.key});

  @override
  State<MaMap> createState() => _MaMapState();
}

class _MaMapState extends State<MaMap> {
  String? selectedValue;
  final List<String> items = ['Paris', 'Lyon', 'Marseille', 'Toulouse', 'Bordeaux'];
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: MapController(),
      options: const MapOptions(
        minZoom: 4,
        maxZoom: 16,
        backgroundColor: Color.fromARGB(255, 116, 197, 93),
        initialCenter: LatLng(48.8566, 2.3522),
        initialZoom: 13.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 210,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  value: selectedValue,
                  hint: Text('Sélectionnez une ville',style : const TextStyle(color: Colors.black)),
                  
                  items: items.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 210,
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Rechercher un lieu',
                    labelStyle: const TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side : const BorderSide(color: Colors.black, width: 1),
                  backgroundColor: Colors.white,
                  
                  fixedSize: const Size(140, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Logique de recherche à implémenter
                },
                child: const Text( 'Rechercher', style: TextStyle(color: Colors.black),textScaler: TextScaler.linear(1.1)),
              ),
            ],
          ),
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(48.8568, 2.3983),
              child: const Icon(
                Icons.circle_rounded,
                color: Colors.red,
                size: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}