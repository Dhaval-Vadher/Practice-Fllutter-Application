import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Ride With THE TOD"),
          centerTitle: true,
          elevation: 0.0,
          leading: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child:  SvgPicture.asset("assets/icons.BackButtion.png"),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: (){
                  ScaffoldMessenger.of(context,).showSnackBar(
                      const SnackBar(content: Text("Checking And Triel of Alert Buttion"),));
                },
            )],
      backgroundColor: Colors.red[400],
      ),
      body: const Center(child: Text("Speed And Fast Way To Find a Best Ride",
        style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),
      ),
      ),

    );
  }
}