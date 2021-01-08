import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final dynamic caucaData;

  const Detail({Key key, this.caucaData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tempMax = caucaData['main']['temp_Max'].toInt();
    int tempMin = caucaData['main']['temp_Min'].toInt();
    int humidity = caucaData['main']['humidity'].toInt();
    double visibilityDouble = caucaData['visibility'].toInt() / 100;
    int visibility = visibilityDouble.toInt();

    return Container(
      decoration: BoxDecoration(
          color: Color(0x80FFFFFF), borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Current Details'),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Temp Max'),
                      Text('Temp Min'),
                      Text('Humidity'),
                      Text('Pressure'),
                      Text('Visibility')
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tempMax.toString()),
                    Text(tempMin.toString()),
                    Text(humidity.toString()),
                    Text(caucaData['main']['pressure'].toString()),
                    Text(visibility.toString() + 'km')
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
