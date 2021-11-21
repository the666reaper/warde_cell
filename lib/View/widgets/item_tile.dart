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
      height: 300,
      width:300,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: Image(
              image: NetworkImage(widget.itemTileMap['image url']),
              fit: BoxFit.fill,
            ),
          ),
          Text('${widget.itemTileMap['productName']}'),
          Text('in stock:${widget.itemTileMap['in stock'] }')
        ],
      ),
    );
  }
}
