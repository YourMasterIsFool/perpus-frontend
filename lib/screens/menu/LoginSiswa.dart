import 'package:flutter/material.dart';
import '../../styles.dart';
import '../../components/text_input.dart';
import '../../service/api_service.dart';
import 'dart:convert';

//import model
import '../../models/roles_model.dart';
import '../../models/student_model.dart';

// import dashboard scren

import '../dashboard.dart';

// import api
import '../../api/student_api.dart';
import '../../api/roles_api.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LoginSiswa extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					iconTheme: IconThemeData(

						color: Colors.white,
					),
					backgroundColor: Theme.of(context).primaryColorDark,
					title: Text("Login Siswa", style: TextStyle(
						color: Colors.white
					))
				),
				body: LoginSiswaComponent()
			)
		);
	}
}

class LoginSiswaComponent extends StatefulWidget {
	@override
	_LoginSiswaComponentState createState() => _LoginSiswaComponentState();
}

class _LoginSiswaComponentState extends State<LoginSiswaComponent> {

	final headerText1 = Text("Hallo", style:textHeading1);
	final headerText2 = Text('Selamat Datang Kembali', style: TextStyle(
		fontSize: textMedium,
		fontWeight: FontWeight.w400,
	));

	final api_service = ApiService();
	List<String> dataRole = [];



	List<String> listKelas = [
		"kelas 7", "kelas 8", "kelas 9"
	];

	String kelasChoose = "kelas 7";
	

	 TextEditingController _nameController = new TextEditingController();
	 TextEditingController _kelasController =  new TextEditingController();


	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
			child: Container(
				padding: const EdgeInsets.symmetric(vertical:20.0, horizontal:16.0),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						headerText1,
						SizedBox(
							height:12.0,
						),
						headerText2,
						SizedBox(
							height:20.0,
						),
						Container(
							padding: EdgeInsets.symmetric(horizontal:16.0),
							child: Column(
								children: [
									Center(
							child: 
								Container(
									decoration: BoxDecoration(
										shape: BoxShape.circle,
										color: Theme.of(context).primaryColorDark,
									),
									padding: EdgeInsets.all(40),
									child: Icon(FontAwesome5Solid.user_graduate, color: Colors.white, size:36)

								)
						),
						SizedBox(
							height:26.0,
						),

						InputField(
							label: "Nama",
							controller: _nameController,
							hintText: "Masukkan nama "

						),
						Container(
							child:Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									Text("Kelas", style: Theme.of(context).textTheme.bodyText1),
									SizedBox(
										height: 12.0,
									),
									Padding(
										padding: EdgeInsets.all(0),
										child: Container(
											padding: EdgeInsets.only(left:16.0, right: 16.0),
											decoration: BoxDecoration(
												border: Border.all(color: Theme.of(context).primaryColorDark, width:1.0),
												borderRadius: BorderRadius.circular(10)
											),
											child: DropdownButton(
												dropdownColor: Theme.of(context).primaryColorDark,
												icon: Icon(Icons.arrow_drop_down),
												iconSize: 24,
												isExpanded: true,
												value: kelasChoose,
												onChanged:(newValue) {
														setState(() {
														kelasChoose = newValue;
													});
												},
												style: TextStyle(
													color: Theme.of(context).primaryColorDark,
													fontSize: 16,
												),
												items: listKelas.map<DropdownMenuItem<String>>((valueItem) {

													return DropdownMenuItem(
														value: valueItem,
														child: Text(valueItem, style: TextStyle(color: Colors.white))
													);
												}).toList(),
												selectedItemBuilder: (BuildContext context) {
													return listKelas.map((String value) {
														return Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															mainAxisAlignment: MainAxisAlignment.center,
															children: [
																Text(
																	kelasChoose,
																	style: TextStyle(
																		color: Theme.of(context).primaryColorDark,
																		fontWeight: FontWeight.bold
																	)
																	 		)
																		],
																	);
																}).toList();
															}
													)
													)
												),
												
											]
										)
									),

									SizedBox(
										height:40.0,
									),

									Container(
										width: double.infinity,
										child: ElevatedButton(
										onPressed: () {		

											StudentModel reqBody = new StudentModel(name:_nameController.text, kelas:kelasChoose);

											createStudent(reqBody).then((resp) {
												print(resp);
												Navigator.pushAndRemoveUntil(
												  context,
												  MaterialPageRoute(builder: (context) => DashboardScreen()),
												  (Route<dynamic> route) => false,
												);
												
											});

										},

										style: ButtonStyle(
											padding: MaterialStateProperty.all<EdgeInsets>(
												EdgeInsets.symmetric(vertical:16, horizontal:26)
											),
											backgroundColor: MaterialStateProperty.resolveWith<Color>(
												(Set<MaterialState> states) {
													if(states.contains(MaterialState.pressed))
														{

															return Theme.of(context).primaryColorDark.withOpacity(0.5);
														}

													return Theme.of(context).primaryColorDark;
												}

											),
											
										),

										child: Text(
											"Masuk",
											style: TextStyle(
												fontSize: 18.0
											)
										),
										
									),
									)

								]
							)
						),
						

					]
				)
			)
		);
	}	
}

	