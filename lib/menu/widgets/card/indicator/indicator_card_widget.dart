import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';
import 'package:loci/core/app_colors.dart';

class IndicatorCardWidget extends StatefulWidget {
  
  @override
  IndicatorCardWidgetState createState() {
    return new IndicatorCardWidgetState();
  }
}

class IndicatorCardWidgetState extends State<IndicatorCardWidget> {
  double _value1 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FluidSlider(
            value: _value1,
            onChanged: (double newValue) {
              setState(() {
                _value1 = newValue;
              });
            },
            min: 0.0,
            max: 10.0,
            sliderColor: AppColors.indicatorTab,
          ),
        ],
      ),
    );
  }
}
