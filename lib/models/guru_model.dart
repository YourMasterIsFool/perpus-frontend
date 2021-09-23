import "dart:core";


class GuruModel {

	final String name;
	final String instansi;
	final String id;


	GuruModel({
		this.name, this.instansi
		, this.id
	});


	factory GuruModel.fromJson(Map<String, dynamic> json ){
		return GuruModel(
			id: json["id"],
			instansi: json["instansi"],
			name: json["name"]
		);
	}

	
	Map<String, dynamic> toJson() {

		return {
			"name": name,
			"instansi": instansi,
		};
	}

}