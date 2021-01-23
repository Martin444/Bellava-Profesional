import 'package:flutter/material.dart';
import 'package:bellava_prof/Utils/Sevices/MasajeServi.dart';
import 'package:bellava_prof/Utils/Sevices/CejaService.dart';

class ExpandedCard extends StatefulWidget {
  @override
  _ExpandedCardState createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Masajes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19
          ),
      ),
      children: [
          // MasajeServList(),
          CejaServiceList()
        
      ],
    );
  }
}