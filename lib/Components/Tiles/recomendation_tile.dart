import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../loading.dart';

class RecommendationTile extends StatelessWidget {
  const RecommendationTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 5,
              child: Container(
                width: 170,
                height: 120,
                child: CachedNetworkImage(
                  imageUrl:
                      "https://image.shutterstock.com/shutterstock/photos/1937722606/display_1500/stock-photo-green-apple-with-green-leaf-and-cut-in-half-slice-isolated-on-white-background-1937722606.jpg",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Loading(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              )),
          Positioned(
            right: 10,
            top: 100,
            child: Text(
              "₹ XXX/XX",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Text(
              "Name of the item",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
