import 'package:flutter/material.dart';
import 'screens/LandingPage.dart';
import 'styles.dart';


class App extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			theme: ThemeData(
				primaryColor: colorPrimary,
				primaryColorDark: colorPrimaryVariant,
				accentColor: colorSecondaryVariant,
				focusColor: colorPrimaryVariant,
				errorColor: Colors.red,
				textTheme: TextTheme(
					headline1: headline1,
					headline2: headline2,
					headline3: headline3,
					bodyText1: bodyText1,
					bodyText2: bodyText2,
				)

			),
			home: LandingPage()
		);
	}
}
