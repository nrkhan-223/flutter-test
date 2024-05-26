class User {
  int? id;
  String? name;
  String? email;
  String? images;
  String? dob;
  String? gander;

  User({
    this.id,
    this.name,
    this.images,
    this.dob,
    this.email,
    this.gander
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    images = json['images'];
    dob = json['dob'].toString();
    email = json['email'];
    gander = json['gander'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['images'] = images;
    data['dob'] = dob;
    data['email'] = email;
    data['gander'] = gander;
    return data;
  }

}
