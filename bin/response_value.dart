class Data {
  String? name;
  String? description;
  String? img;
  List<Users>? users;

  Data({this.name, this.description, this.img, this.users});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    img = json['img'];
    if (json['users'] != null) {
      users = new List<Users>.empty(growable: true);
      json['users'].forEach((v) {
        users?.add(new Users.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['img'] = this.img;
    if (this.users != null) {
      data['users'] = this.users?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  int? id;
  String? name;
  String? img;
  Communinty? communinty;

  Users({this.id, this.name, this.img, this.communinty});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    communinty = json['communinty'] != null
        ? new Communinty.fromJson(json['communinty'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['img'] = this.img;
    if (this.communinty != null) {
      data['communinty'] = this.communinty?.toJson();
    }
    return data;
  }
}

class Communinty {
  int? id;
  String? name;
  String? description;
  String? img;

  Communinty({this.id, this.name, this.description, this.img});

  Communinty.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['img'] = this.img;
    return data;
  }
}
