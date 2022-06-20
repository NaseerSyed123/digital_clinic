class DoctorListModel {
  DoctorListModel({
    required this.success,
    required this.data,
  });
  late final int success;
  late final List<Data> data;

  DoctorListModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.qalification,
    required this.location,
    required this.description,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String password;
  late final String qalification;
  late final String location;
  late final String description;
  late final String image;
  late final String createdAt;
  late final String updatedAt;
  late final String status;


  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    qalification = json['qalification'];
    location = json['location'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['password'] = password;
    _data['qalification'] = qalification;
    _data['location'] = location;
    _data['description'] = description;
    _data['image'] = image;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['status'] = status;
    return _data;
  }
}