import 'package:flutter/material.dart';
import 'package:trees/fetchapi.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

List temp = [0, 0];

class _HomeState extends State<Home> {
  @override
  void initState() {
    // temp = getweather();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wether'),
        actions: [
          IconButton(
            onPressed: () async {
              temp = await getHttp();
              setState(() {});
            },
            icon: Icon(Icons.circle),
            color: Colors.red,
          )
        ],
      ),
      body:
          Center(child: Text('weather = ${temp[0]}, wind speed = ${temp[1]}')),
    );
  }

  // getweather() async {
  //   double gg = await getHttp();
  //   return gg;
  // }
}
