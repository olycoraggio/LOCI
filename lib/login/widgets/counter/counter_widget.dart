import 'package:flutter/material.dart';
import 'package:loci/core/app_text_styles.dart';
import 'package:numberpicker/numberpicker.dart';

// class CounterWidget extends StatefulWidget {
//   @override
//   _CounterWidgetState createState() => _CounterWidgetState();
// }

// class _CounterWidgetState extends State<CounterWidget> {
//   int _currentValue = 3;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Text('Tripulantes da mesa: $_currentValue'),
//         NumberPicker(
//           value: _currentValue,
//           minValue: 0,
//           maxValue: 100,
//           onChanged: (value) => setState(() => _currentValue = value),
//         ),
//       ],
//     );
//   }
// }
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _currentHorizontalIntValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Tripulantes na mesa:',
          style: AppTextStyles.headingSec,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberPicker(
              value: _currentHorizontalIntValue,
              minValue: 0,
              maxValue: 4,
              axis: Axis.horizontal,
              onChanged: (value) =>
                  setState(() => _currentHorizontalIntValue = value),
              itemHeight: 30,
              itemWidth: 60,
            ),
          ],
        ),
      ],
    );
  }
}
