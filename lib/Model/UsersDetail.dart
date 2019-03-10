class UsersDetail {
  String name;
  String username;
  String email;
  String phone;
  String website;
  int id;
  AddressBean address;
  CompanyBean company;

  UsersDetail({this.name, this.username, this.email, this.phone, this.website, this.id, this.address, this.company, });

  UsersDetail.fromJson(Map<String, dynamic> json) {    
    this.name = json['name'];
    this.username = json['username'];
    this.email = json['email'];
    this.phone = json['phone'];
    this.website = json['website'];
    this.id = json['id'];
    this.address = AddressBean.fromJson(json['address']);
    this.company = CompanyBean.fromJson(json['company']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['website'] = this.website;
    data['id'] = this.id;
    data['address'] = this.address.toJson();
    data['company'] = this.company.toJson();
    return data;
  }

}

class AddressBean {
  String street;
  String suite;
  String city;
  String zipcode;
  GeoBean geo;

  AddressBean({this.street, this.suite, this.city, this.zipcode, this.geo, });

  AddressBean.fromJson(Map<String, dynamic> json) {    
    this.street = json['street'];
    this.suite = json['suite'];
    this.city = json['city'];
    this.zipcode = json['zipcode'];
    this.geo = GeoBean.fromJson(json['geo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['suite'] = this.suite;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    data['geo'] = this.geo.toJson();
    return data;
  }
}

class CompanyBean {
  String name;
  String catchPhrase;
  String bs;

  CompanyBean({this.name, this.catchPhrase, this.bs, });

  CompanyBean.fromJson(Map<String, dynamic> json) {    
    this.name = json['name'];
    this.catchPhrase = json['catchPhrase'];
    this.bs = json['bs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['catchPhrase'] = this.catchPhrase;
    data['bs'] = this.bs;
    return data;
  }
}

class GeoBean {
  String lat;
  String lng;

  GeoBean({this.lat, this.lng, });

  GeoBean.fromJson(Map<String, dynamic> json) {    
    this.lat = json['lat'];
    this.lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}
