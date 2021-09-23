import 'dart:async';
import 'dart:core';

class RoleModel{
	final String role;
	final int id;

	RoleModel({
		this.role,
		this.id
	});

	factory RoleModel.fromJson(Map<String, dynamic> json) {
		return RoleModel(
			id : json["id"],
			role: json["role"],
		);
	}


	Map<String, dynamic> toJson() {

		return {
			"role": role
		};
	}


	

}