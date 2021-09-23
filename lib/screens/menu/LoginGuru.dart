import 'package:flutter/material.dart';
import '../../styles.dart';
import '../../components/text_input.dart';
import 'package:flutter_icons/flutter_icons.dart';

//import models guru
import '../../models/guru_model.dart';

// import api guru
import '../../api/guru_api.dart';


class LoginGuru extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					iconTheme: IconThemeData(

						color: Theme.of(context).primaryColor,
					),
					backgroundColor: Theme.of(context).primaryColorDark,
					title: Text("Login Guru", style: TextStyle(
						color: Colors.white
					))
				),
				body: LoginGuruComponent()
			)
		);
	}
}

class LoginGuruComponent extends StatefulWidget {
	@override
	_LoginSiswaComponentState createState() => _LoginSiswaComponentState();
}

class _LoginSiswaComponentState extends State<LoginGuruComponent> {

	Future<GuruModel> _post;


	final headerText1 = Text("Hallo", style:textHeading1);
	final headerText2 = Text('Selamat Datang Kembali', style: TextStyle(
		fontSize: textMedium,
		fontWeight: FontWeight.w400,
	));


	List<String> listKelas = [
		"kelas 7", "kelas 8", "kelas 9"
	];

	String kelasChoose = "kelas 7";
	

	 TextEditingController _nameController = new TextEditingController();
	 TextEditingController _kelasController =  new TextEditingController();



	@override
	Widget build(BuildContext context) {
		return Container(
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
					
					InputField(
						label: "Nama",
						controller: _nameController,
						hintText: "Masukkan nama "

					),
					Container(
						child:Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text("Instansi", style: Theme.of(context).textTheme.bodyText1),
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

					ElevatedButton(
						onPressed: () {
							GuruModel postBody =  GuruModel(name:_nameController.text, instansi: "bagus");
							// post data
							_post = GuruApi().create(postBody);

						},

						style: ButtonStyle(
							padding: MaterialStateProperty.all<EdgeInsets>(
								EdgeInsets.symmetric(vertical:12, horizontal:26)
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
								fontSize: 14.0
							)
						)
					),



				]
			)
		);
	}
}

	