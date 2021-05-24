import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../loading.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 20,
      height: MediaQuery.of(context).size.width / 3 - 20,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      margin: EdgeInsets.all(3),
      child: Column(
        children: [
          SizedBox(
            height: 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3 - 26,
            height: MediaQuery.of(context).size.width / 3 - 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: CachedNetworkImage(
              imageUrl:
                  "https://image.shutterstock.com/shutterstock/photos/1721533831/display_1500/stock-photo-fresh-fruits-assorted-fruits-colorful-clean-eating-fruit-background-1721533831.jpg",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
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
          SizedBox(
            height: 3,
          ),
          Text(
            "Category tag",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
