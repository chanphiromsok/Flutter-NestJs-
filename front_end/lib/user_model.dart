class User {
  String firstname;
  String lastname;
  String country;
  String gender;
  int id;

  User({this.firstname, this.lastname, this.country, this.gender, this.id});

  User.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    country = json['country'];
    gender = json['gender'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['country'] = this.country;
    data['gender'] = this.gender;
    data['id'] = this.id;
    return data;
  }
}
