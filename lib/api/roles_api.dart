import '../models/roles_model.dart';
import '../service/api_service.dart';
import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

Future<RoleModel> createRole(RoleModel schema) async {


	try{
		Response res = await ApiService().apiClient().post('roles/', data:jsonEncode(schema.toJson()));
		
		if(res.statusCode == 200 || res.statusCode == 201) {
			Map<String, dynamic> map = res.data;

			return RoleModel.fromJson(map["data"]);
		}
	}
	catch(error) {
		throw new Exception(error);
	}

}