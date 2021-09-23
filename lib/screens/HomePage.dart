import 'package:flutter/material.dart';
import '../styles.dart';
import 'menu/LoginSiswa.dart';
import "menu/LoginUmum.dart";
import 'menu/LoginGuru.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {

	List<Map<String, dynamic>> listMenu = [

		{
			"title": "Siswa",
			"icon": FontAwesome5Solid.user_graduate,
			'component': LoginSiswa()
		},
		{
			"title": "Guru",
			"icon": FontAwesome5Solid.chalkboard_teacher,
			"component": LoginGuru()
		},
		{
			"title": "Umum",
			"icon": FontAwesome5Solid.user_alt,
			"component": LoginUmum(),
		},
	];

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				body: Center(
					child: Row(
						crossAxisAlignment: CrossAxisAlignment.center,
						mainAxisAlignment: MainAxisAlignment.spaceEvenly,
						
						children: listMenu.map((menu) => Container(
							height:150,
							width:120,
							child: Column(
								children: [
									ElevatedButton(
										onPressed: (){
											if(menu["component"] != null) {
												Navigator.push(
													context,
													MaterialPageRoute(builder: (context) => menu["component"])
												);
											}
										},
										style: ButtonStyle(
											backgroundColor: MaterialStateProperty.all<Color>(
												Theme.of(context).primaryColorDark
											),
											padding: MaterialStateProperty.all(EdgeInsets.all(30)),
											shape: MaterialStateProperty.all(CircleBorder())
										),
										child: Center(
												child: 	Icon(menu["icon"]),
												
											
											  	)

									),
									SizedBox(
										height:20,
									),
									Text(
										'${menu["title"]}',
										style: TextStyle(
											color: Colors.black,
											fontWeight: FontWeight.bold
										),

										)
								]

							),
						)).toList()
					)
				)
			)
		);
	}
}
	