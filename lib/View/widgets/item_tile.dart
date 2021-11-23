// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class ItemTile extends StatefulWidget {
  final Map itemTileMap;
  const ItemTile({Key? key, required this.itemTileMap}) : super(key: key);

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 212,
      width:212,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(widget.itemTileMap['image url'],
          fit: BoxFit.fill,
          width: 200,
          height: 130,
          ),
          Text('${widget.itemTileMap['productName']}'),
          Text('in stock:${widget.itemTileMap['in stock'] }')
        ],
      ),
    );
  }
  
}
