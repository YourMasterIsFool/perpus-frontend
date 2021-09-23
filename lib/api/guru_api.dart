import 'dart:async';
import 'dart:convert';
import '../models/guru_model.dart';
import '../service/api_service.dart';
import 'package:dio/dio.dart';

class GuruApi {

	Future<GuruModel> create(GuruModel schema) async {

		try {

			Response response = await ApiService().apiClient().post('teachers/', data:jsonEncode(schema.toJson()));
			
			print(response);
			if(response.statusCode == 200) {
				print(response.data);
			}

			
		}
		catch(e) {
			print(e);
		}
	}

}