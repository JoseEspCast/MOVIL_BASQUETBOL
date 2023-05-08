
// flutter pub add google_maps_flutter IMPORTAMOS

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class maps extends StatelessWidget {
  
 maps({Key? key}) : super(key: key);
 final colorfondo = Color.fromARGB(255, 1, 17, 243);
 final colorTexto = Colors.black;
 final colorEtiqueta =  Color.fromARGB(255, 233, 121, 29);

 final LatLng initialLocation  = const LatLng(25.815159, -108.981646

);

  



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GOGLE MAPS :  CANCHA'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialLocation,
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: MarkerId('marker_1'),
            position: initialLocation,
            infoWindow: InfoWindow(
              title: 'San Francisco',
              snippet: 'Welcome to San Francisco!',
            ),
          ),
        },
      ),
    );
  }
}