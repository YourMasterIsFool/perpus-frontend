class StudentModel{
	final int id;
	final String name;
	final String kelas;


	StudentModel({
		this.id, this.name, this.kelas
	});


	factory StudentModel.fromJson(Map<String, dynamic> json) {

		return StudentModel(
			id: json["id"],
			name: json["name"],
			kelas: json["kelas"]
		);
	}


	toJson() {

		return {
			'name': name,
			"kelas": kelas
		};
	}

}