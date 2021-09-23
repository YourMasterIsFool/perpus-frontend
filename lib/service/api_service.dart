import 'package:dio/dio.dart';
import 'dart:async';


class ApiService {


	static String _baseUrl = "http://192.168.0.104:8080/";

	static BaseOptions options = BaseOptions(
		baseUrl: _baseUrl,
		connectTimeout:10000,
		receiveTimeout:3000,
		validateStatus: (code) {
			if(code >= 200){
				return true;
			}
		},
	);


	apiClient() {

		Dio _api =  Dio(options);
		print(_baseUrl);

		return _api;
	}



}