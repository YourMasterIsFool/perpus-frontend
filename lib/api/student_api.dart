
import 'dart:async';
import 'package:dio/dio.dart';
import 'dart:convert';
import '../service/api_service.dart';
import '../models/student_model.dart';

Future<dynamic> getAllDataStudent() async {
	try {
		final response = await ApiService().apiClient().get("roles/");
		print(response);
		if(response.statusCode == 200) {
			

			return response;

		}
		else {
			throw response.statusCode;
		}

	}
	on DioError catch(error) {
		print(error);
	}

}



Future<StudentModel> createStudent(StudentModel schema) async {

	
	try{
		Response res = await ApiService().apiClient().post('students/', data:jsonEncode(schema.toJson()));
		print(res);
		if(res.statusCode == 200 || res.statusCode == 201) {
			Map<String, dynamic> map = res.data;

			return StudentModel.fromJson(map["data"]);
		}
		
	}
	catch(error) {
		throw new Exception(error);
	}
} 
