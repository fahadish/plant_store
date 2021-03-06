import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_store/Core/text_style.dart';
import 'package:plant_store/core/color.dart';
import 'package:plant_store/data/plant.dart';
import 'package:plant_store/widgets/custom_appbar.dart';
import 'package:plant_store/widgets/item_card.dart';
import 'package:plant_store/widgets/menu_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                const MenuBar(),
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 35.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Green'),
                      const Text(
                        'Plants',
                        style: headline1,
                      ),
                      Expanded(child: Scrollbar(
                          thickness: 4,
                          child:
                          ListView.builder(
                              itemCount: plant.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (itemBuilder, index) { final plants = plant[index];
                        return PlantItemCard(plants: plants,);
                      })))
                    ],
                  ),
                ))
              ],
            ),
const CustomAppBar(),
            Align(alignment: Alignment.bottomLeft,child: TextButton(onPressed: (){},child: SvgPicture.asset('assets/icon/home.svg',height: 25,color: white,),)
              )
          ],
        ),
      ),
    );
  }
}
