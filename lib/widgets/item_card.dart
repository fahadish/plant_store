import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_store/Core/color.dart';
import 'package:plant_store/Core/space.dart';
import 'package:plant_store/Core/text_style.dart';
import 'package:plant_store/data/plant.dart';

class PlantItemCard extends StatelessWidget {
  final Plants plants;
  const PlantItemCard({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 400.0,
        margin: EdgeInsets.only(right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              plants.images[0],
              height: 250.0,
            ),
            SpaceVH(
              height: 20.0,
            ),
            Text(
              plants.name,
              style: headline2,
            ),
            SpaceVH(
              height: 2.5,
            ),
            Text(
              plants.description,
              maxLines: 2,
            ),
            SpaceVH(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plants.price,
                  style: headline2,
                ),
                SpaceVH(
                  width: 20.0,
                ),
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: black.withOpacity(0.3),
                            blurRadius: 10.0,
                            offset: Offset(1, 6))
                      ]),
                  child: Icon(Icons.add,size: 10.0,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
