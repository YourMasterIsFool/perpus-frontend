import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class MyWebView extends StatelessWidget {
	
	final String url;

	MyWebView({
		this.url
	});


	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: WebViewState()
			)
		);
	}
}


class WebViewState extends StatefulWidget {
	@override
	_WebViewStateState createState() => _WebViewStateState();
}

class _WebViewStateState extends State<WebViewState> {
	
	@override
	void initState() {

		super.initState();

		if(Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
	}


	@override
	Widget build(BuildContext context) {
		return WebView(
			 initialUrl: 'https://flutter.dev',
		);
	}
}

	