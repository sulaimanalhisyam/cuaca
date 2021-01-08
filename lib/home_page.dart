import 'package:cuaca/service/service_cuaca.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final cuaca;

  const HomeScreen({Key key, this.cuaca}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic caucaData;

  @override
  void initState() {
    caucaData = widget.cuaca;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int temprature = caucaData['main']['temp'].toInt;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(ServiceCuaca()
                                .getCuacaBackground(
                                    caucaData[0]['main'].toString())))),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 140,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('monday, 23 nov 2020',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('22',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 100)),
                              Text('°C',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 32))
                            ],
                          ),
                        ],
                      ),
                      Text('hujan',
                          style: TextStyle(color: Colors.white, fontSize: 28.0))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
