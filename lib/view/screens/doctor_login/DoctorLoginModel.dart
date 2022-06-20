class LoginModel {
  LoginModel({
    required this.success,
    required this.data,
  });
  late final int success;
  late final Data data;

  LoginModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.clinicName,
    required this.location,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    this.status,
    required this.image,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String password;
  late final String clinicName;
  late final String location;
  late final String description;
  late final String createdAt;
  late final String updatedAt;
  late final Null status;
  late final String image;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    clinicName = json['clinic_name'];
    location = json['location'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = null;
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['password'] = password;
    _data['clinic_name'] = clinicName;
    _data['location'] = location;
    _data['description'] = description;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['status'] = status;
    _data['image'] = image;
    return _data;
  }
}