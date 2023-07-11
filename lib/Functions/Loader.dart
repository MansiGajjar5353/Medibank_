import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Loader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child:   Lottie.network(
              'https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json',
              height: 200.0,
              repeat: true,
              reverse: true,
              animate: true,
            ),
          ),
        ],
      ),
    );

  }

}