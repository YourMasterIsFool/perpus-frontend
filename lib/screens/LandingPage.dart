import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'dart:async';

class LandingPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		
		Timer(
			Duration(seconds: 2),
			() => {
				Navigator.of(context).pushReplacement(
					MaterialPageRoute(
						builder: (BuildContext context) => HomePage()
					)
				)
			}
		);

		return Scaffold(
			body: Container(

				child: Center(
					child: Image.asset('assets/images/library.png', height: 400, width: 400),
				)
			)
		);
	}
}
