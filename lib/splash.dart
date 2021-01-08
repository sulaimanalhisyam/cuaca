import 'package:cuaca/home_page.dart';
import 'package:cuaca/service/service_cuaca.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getDatacuaca();
    super.initState();
  }

  void getDatacuaca() async {
    var caucadata = await ServiceCuaca().getCityCuaca('jakarta');

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('cuaca'),
      ),
    );
  }
}
