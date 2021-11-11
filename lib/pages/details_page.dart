import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_store/Core/color.dart';
import 'package:plant_store/Core/space.dart';
import 'package:plant_store/Core/text_style.dart';
import 'package:plant_store/data/plant.dart';

class DetailsPage extends StatefulWidget {
  final Plants plants;
  const DetailsPage({Key? key, required this.plants}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectImage = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: black,
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            color: green,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 1.5,
              decoration:
              const BoxDecoration(
                  color: white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(200.0))),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 30.0,
              width: 30.0,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: const BoxDecoration(shape: BoxShape.circle, color: green),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: white,
                size: 18.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: height / 2.2,
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: ((index) {
                      setState(() {
                        selectImage = index;
                      });
                    }),
                    children: [
                      for (int i = 0; i < widget.plants.images.length; i++)
                        Image.asset(
                          widget.plants.images[i],
                          height: height / 2.2,
                        )
                    ],
                  ),
                ),
                const SpaceVH(
                  height: 2.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100.0,
                      child: Column(
                        children: [
                          for (int k = 0; k < widget.plants.images.length; k++)
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 5.0,
                              ),
                              height: k == selectImage ? 20.0 : 6.0,
                              width: 6,
                              decoration: BoxDecoration(
                                  color: k == selectImage
                                      ? green
                                      : green.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50.0)),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.plants.name,
                          style: headline1,
                        ),
                        const SpaceVH(
                          height: 5.0,
                        ),
                        Text(
                          widget.plants.description,
                          maxLines: 2,
                        ),
                        const SpaceVH(
                          height: 20.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.plants.price,
                              style: headline2,
                            ),
                            const SpaceVH(
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
                                      offset: const Offset(1, 6),
                                    ),
                                  ]),
                              child: const Icon(
                                Icons.add,
                                size: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 120.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bottomTag(
                      headingText: 'Height',
                      image: 'height.svg',
                      text: widget.plants.height),

                  bottomTag(
                      headingText: 'Temperature',
                      image: 'celsius.svg',
                      text: widget.plants.temp),
                  bottomTag(
                      headingText: 'pot',
                      image: 'plant.pot.svg',
                      text: widget.plants.pot),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomTag(
      {required String text,
      required String image,
      required String headingText}) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/icon/$image',
          height: 30.0,
          color: white,
        ),
        const SpaceVH(
          height: 15.0,
        ),
        Text(
          headingText,
          style: headline3,
        ),
        const SpaceVH(
          height: 5.0,
        ),
        Text(
          text,
          style: headline4,
        )
      ],
    );
  }
}
