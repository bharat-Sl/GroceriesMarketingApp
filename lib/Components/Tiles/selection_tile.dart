import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../loading.dart';

class SelectionTile extends StatefulWidget {
  const SelectionTile({Key key}) : super(key: key);

  @override
  _SelectionTileState createState() => _SelectionTileState();
}

class _SelectionTileState extends State<SelectionTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130,
            height: 130,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: CachedNetworkImage(
              imageUrl:
                  "https://image.shutterstock.com/shutterstock/photos/1937722606/display_1500/stock-photo-green-apple-with-green-leaf-and-cut-in-half-slice-isolated-on-white-background-1937722606.jpg",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Loading(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Item Name",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Weight",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Price",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[800].withOpacity(1),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              height: 40,
              width: 140,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
