import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_store/Core/color.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,

      padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(onPressed: (){}, child: SvgPicture.asset('assets/icon/blur.svg',
          height: 25 ,color: white,
          )),
          TextButton(onPressed: (){}, child: SvgPicture.asset('assets/icon/search.svg',
          height: 25,))


        ],
    ),);
  }
}
