import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
	final TextEditingController controller;
	final String hintText;
	final String label;

	InputField({
		this.controller,
		this.hintText,
		this.label
	});

	
	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(bottom: 20.0),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text('${label}', style:	Theme.of(context).textTheme.bodyText1 ),
					SizedBox(
						height:12.0,
					),
					TextFormField(
						style: TextStyle(
							color: Theme.of(context).primaryColorDark,
						),
						controller: controller,
						decoration: InputDecoration(
							border: OutlineInputBorder(
								borderRadius: BorderRadius.circular(10.0)
							),
							hintText: null == hintText ? null : hintText,
							contentPadding: EdgeInsets.fromLTRB(16.0,12.0,8.0,12.0),
						)
					)
				]
			)
		 
		);
	}
}	
	