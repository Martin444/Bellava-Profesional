import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Maped extends StatefulWidget {

  LatLng lat;

  Maped({this.lat});

  @override
  _MapedState createState() => _MapedState();
}

class _MapedState extends State<Maped> {
  @override
  Widget build(BuildContext context) {
    return new FlutterMap(
      options: new MapOptions(
        center: widget.lat,
        zoom: 15.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://api.tiles.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
          additionalOptions: {
            'accessToken': 'pk.eyJ1IjoiYWxlamFuZHJvZmFyZWwiLCJhIjoiY2szamVrenN0MDJuODNxcWs1aGF4a3p0YyJ9.6EWbZKWtiKeNyngGCeYlIw',
            'id': 'mapbox.streets',
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 80.0,
              height: 80.0,
              point: widget.lat,
              builder: (ctx) =>
              new Container(
                child: new Icon(Icons.location_on, size: 45, color: Colors.red,),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
