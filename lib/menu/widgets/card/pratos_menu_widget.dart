import 'package:flutter/material.dart';
import 'package:loci/core/app_colors.dart';
import 'package:loci/core/app_images.dart';
import 'package:loci/core/app_text_styles.dart';
import 'package:loci/menu/widgets/card/indicator/indicator_card_widget.dart';
import 'package:slimy_card/slimy_card.dart';

class PratoMenu extends StatefulWidget {
  @override
  _PratoMenuState createState() => _PratoMenuState();
}

class _PratoMenuState extends State<PratoMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundButton,
      body: StreamBuilder(
        initialData: false,
        stream: slimyCard.stream,
        builder: ((BuildContext context, AsyncSnapshot snapshot) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SlimyCard(
                  width: 400,
                  topCardHeight: 300,
                  bottomCardHeight: 150,
                  color: Colors.blueGrey[50],
                  topCardWidget: topCardWidget(
                      (snapshot.data) ? AppImages.peru : AppImages.peru),
                  bottomCardWidget: bottomCardWidget(),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget topCardWidget(String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(imagePath)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Peru',
              style: AppTextStyles.headingCard,
            ),
            Text(
              '72,99',
              style: AppTextStyles.headingCard,
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Peru assado nas chamas do planetóide mais quente da região juntamente com especiarias trazidas de planetas fazenda',
                  style: AppTextStyles.body,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }

  Widget bottomCardWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IndicatorCardWidget(),
        ),
      ],
    );
  }
}
