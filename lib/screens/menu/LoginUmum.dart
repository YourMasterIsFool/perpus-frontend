import 'package:flutter/material.dart';

class LoginUmum extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				iconTheme: IconThemeData(
					color: Colors.white
				),
				backgroundColor: Theme.of(context).primaryColorDark,
				title: Text(
					"Login Guru",
					style: TextStyle(
						color: Colors.white
					)
				)
			),
			body: SafeArea(
				
				child: LoginUmumStatefull()
			)
		);
	}
}

class LoginUmumStatefull extends StatefulWidget {
	@override
	_LoginUmumStatefullState createState() => _LoginUmumStatefullState();
}

class _LoginUmumStatefullState extends State<LoginUmumStatefull> {
	@override
	Widget build(BuildContext context) {
		return Container(
			padding: const EdgeInsets.symmetric(vertical:20.0, horizontal:16.0),
			child:Text("qwew")
		);
	}
}
