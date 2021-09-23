import 'package:flutter/material.dart';
import 'my_web_view.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DashboardScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: DashboardState()
				
			)
		);
	}
}


class DashboardState extends StatefulWidget {
	@override
	_DashboardStateState createState() => _DashboardStateState();
}

class _DashboardStateState extends State<DashboardState> {
	

	var menus = [
		{
			"title": "Dashboard",
			"img": "https://www.images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
		},
		{
			"title": "Dashboard",
			"img": null
		},
		{
			"title": "Dashboard",
			"img": null
		},
		{
			"title": "Dashboard",
			"img": null
		},
	];

	@override
	Widget build(BuildContext context) {
		return Column(
			children: [
				Container(
					height: 200,
					width: double.infinity,
					padding: EdgeInsets.all(20),
					decoration: BoxDecoration(
						borderRadius: BorderRadius.only(
							bottomRight: Radius.circular(32),
							bottomLeft: Radius.circular(32),
						),
						color: Theme.of(context).primaryColorDark
					),
					child: 

					Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							// Text("Dashboard", 
							// style:TextStyle(
							// 	color: Colors.white,
							// 	fontSize: 24,
							// 	fontWeight: FontWeight.bold
							// )),
							SizedBox(
								height: 24,
							),
							Text("Hallo Aizen", style: TextStyle( color: Colors.white70, fontSize:20, fontWeight: FontWeight.w500)),
							SizedBox(
								height:12,
							),
							Text("Welcome Back",
								style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)
							)
						]
					)
				),
				Expanded(
					flex:1,
					child: Padding(
						padding: EdgeInsets.all(24),
						child: GridView.count(
						crossAxisCount: 2,
						mainAxisSpacing: 24,
						crossAxisSpacing: 24,

						children:[
							ElevatedButton(
								child:Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisAlignment: MainAxisAlignment.center,
									children:[
										Container(
											padding: EdgeInsets.all(24),
											decoration: BoxDecoration(
												color: Colors.white,
												shape: BoxShape.circle,
											),
											child: Icon(Ionicons.ios_search, color: Colors.red.shade300, size:32)
										),
										SizedBox(
											height:16
										),
										Text("New Ideas", style: TextStyle(
											color: Colors.red[300],
											fontSize: 14,
											fontWeight: FontWeight.bold
										))
									]
								),
								style: ButtonStyle(
									backgroundColor: MaterialStateProperty.all<Color>(Colors.red[100].withOpacity(0.56)),
									shape: MaterialStateProperty.all<RoundedRectangleBorder>(
									    RoundedRectangleBorder(
									      borderRadius: BorderRadius.circular(24),
									)
 								 )
								)
							),
							ElevatedButton(
								child:Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisAlignment: MainAxisAlignment.center,
									children:[
										Container(
											padding: EdgeInsets.all(24),
											decoration: BoxDecoration(
												color: Colors.white,
												shape: BoxShape.circle,
											),
											child: Icon(Icons.add_alarm_sharp, color: Colors.blue.shade300, size:32)
										),
										SizedBox(
											height:16
										),
										Text("New Ideas", style: TextStyle(
											color: Colors.blue[300],
											fontSize: 14,
											fontWeight: FontWeight.bold
										))
									]
								),
								style: ButtonStyle(
									backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[100].withOpacity(0.56)),
									shape: MaterialStateProperty.all<RoundedRectangleBorder>(
									    RoundedRectangleBorder(
									      borderRadius: BorderRadius.circular(24),
									)
 								 )
								)
							),ElevatedButton(
								child:Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisAlignment: MainAxisAlignment.center,
									children:[
										Container(
											padding: EdgeInsets.all(24),
											decoration: BoxDecoration(
												color: Colors.white,
												shape: BoxShape.circle,
											),
											child: Icon(Icons.add_chart, color: Colors.green.shade300, size:32)
										),
										SizedBox(
											height:16
										),
										Text("New Ideas", style: TextStyle(
											color: Colors.green[300],
											fontSize: 14,
											fontWeight: FontWeight.bold
										))
									]
								),
								style: ButtonStyle(
									backgroundColor: MaterialStateProperty.all<Color>(Colors.green[100].withOpacity(0.56)),
									shape: MaterialStateProperty.all<RoundedRectangleBorder>(
									    RoundedRectangleBorder(
									      borderRadius: BorderRadius.circular(24),
									)
 								 )
								)
							),
							ElevatedButton(
								child:Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisAlignment: MainAxisAlignment.center,
									children:[
										Container(
											padding: EdgeInsets.all(24),
											decoration: BoxDecoration(
												color: Colors.white,
												shape: BoxShape.circle,
											),
											child: Icon(Icons.agriculture_outlined, color: Colors.orange.shade300, size:32)
										),
										SizedBox(
											height:16
										),
										Text("New Ideas", style: TextStyle(
											color: Colors.orange[300],
											fontSize: 14,
											fontWeight: FontWeight.bold
										))
									]
								),
								style: ButtonStyle(
									backgroundColor: MaterialStateProperty.all<Color>(Colors.orange[100].withOpacity(0.56)),
									shape: MaterialStateProperty.all<RoundedRectangleBorder>(
									    RoundedRectangleBorder(
									      borderRadius: BorderRadius.circular(24),
									)
 								 )
								)
							)
						]
					)
					)
				)

			]
		);
	}
}

	
	