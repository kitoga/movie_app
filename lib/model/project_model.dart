// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'dart:convert';

ProductModel projectModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String projectModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  int? totalProjects;
  List<Projects>? projects;

  ProductModel({this.totalProjects, this.projects});

  ProductModel.fromJson(Map<String, dynamic> json) {
    totalProjects = json['total_projects'];
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(new Projects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_projects'] = this.totalProjects;
    if (this.projects != null) {
      data['projects'] = this.projects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Projects {
  String? id;
  String? title;
  String? location;
  Null? latitude;
  Null? longitude;
  String? lgaId;
  Null? lawmakerId;
  String? amountAppr;
  String? amountFunded;
  String? agency;
  String? ministry;
  String? year;
  Null? contractor;
  Null? projectcategoryId;
  String? status;
  Null? description;
  String? type;
  String? dateCreated;
  String? stateId;
  String? lawmakerCode;
  String? constCode;
  String? programCode;
  String? implStatus;
  List<dynamic>? photos;
  String? mda;
  String? statusString;
  String? contractorName;
  int? commentsNo;
  int? likesNo;
  int? userLiked;
  int? dislikesNo;
  int? userDisliked;
  int? userFollowed;
  int? following;
  Lawmaker? lawmaker;

  Projects(
      {this.id,
      this.title,
      this.location,
      this.latitude,
      this.longitude,
      this.lgaId,
      this.lawmakerId,
      this.amountAppr,
      this.amountFunded,
      this.agency,
      this.ministry,
      this.year,
      this.contractor,
      this.projectcategoryId,
      this.status,
      this.description,
      this.type,
      this.dateCreated,
      this.stateId,
      this.lawmakerCode,
      this.constCode,
      this.programCode,
      this.implStatus,
      this.photos,
      this.mda,
      this.statusString,
      this.contractorName,
      this.commentsNo,
      this.likesNo,
      this.userLiked,
      this.dislikesNo,
      this.userDisliked,
      this.userFollowed,
      this.following,
      this.lawmaker});

  Projects.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    lgaId = json['lga_id'];
    lawmakerId = json['lawmaker_id'];
    amountAppr = json['amount_appr'];
    amountFunded = json['amount_funded'];
    agency = json['agency'];
    ministry = json['ministry'];
    year = json['year'];
    contractor = json['contractor'];
    projectcategoryId = json['projectcategory_id'];
    status = json['status'];
    description = json['description'];
    type = json['type'];
    dateCreated = json['date_created'];
    stateId = json['state_id'];
    lawmakerCode = json['lawmaker_code'];
    constCode = json['const_code'];
    programCode = json['program_code'];
    implStatus = json['impl_status'];
    if (json['photos'] == null) {
      photos = <Null>[];
      json['photos'].forEach((v) {
        photos?.add(v.fromJson(v));
      });
    }
    mda = json['mda'];
    statusString = json['status_string'];
    contractorName = json['contractor_name'];
    commentsNo = json['comments_no'];
    likesNo = json['likes_no'];
    userLiked = json['user_liked'];
    dislikesNo = json['dislikes_no'];
    userDisliked = json['user_disliked'];
    userFollowed = json['user_followed'];
    following = json['following'];
    lawmaker = json['lawmaker'] != null
        ? new Lawmaker.fromJson(json['lawmaker'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['location'] = this.location;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['lga_id'] = this.lgaId;
    data['lawmaker_id'] = this.lawmakerId;
    data['amount_appr'] = this.amountAppr;
    data['amount_funded'] = this.amountFunded;
    data['agency'] = this.agency;
    data['ministry'] = this.ministry;
    data['year'] = this.year;
    data['contractor'] = this.contractor;
    data['projectcategory_id'] = this.projectcategoryId;
    data['status'] = this.status;
    data['description'] = this.description;
    data['type'] = this.type;
    data['date_created'] = this.dateCreated;
    data['state_id'] = this.stateId;
    data['lawmaker_code'] = this.lawmakerCode;
    data['const_code'] = this.constCode;
    data['program_code'] = this.programCode;
    data['impl_status'] = this.implStatus;
    if (this.photos != null) {
      data['photos'] = photos?.map((v) => v.toJson()).toList();
    }
    data['mda'] = this.mda;
    data['status_string'] = this.statusString;
    data['contractor_name'] = this.contractorName;
    data['comments_no'] = this.commentsNo;
    data['likes_no'] = this.likesNo;
    data['user_liked'] = this.userLiked;
    data['dislikes_no'] = this.dislikesNo;
    data['user_disliked'] = this.userDisliked;
    data['user_followed'] = this.userFollowed;
    data['following'] = this.following;
    if (this.lawmaker != null) {
      data['lawmaker'] = this.lawmaker!.toJson();
    }
    return data;
  }
}

class Lawmaker {
  String? id;
  String? fullname;
  String? phoneNo;
  String? officePhoneNo;
  String? email;
  String? constId;
  String? districtId;
  String? appointmentYear;
  String? appointmentEnddate;
  String? type;
  String? party;
  Null? photo;
  Null? bio;
  String? status;
  String? dateCreated;
  String? code;
  String? serialno;
  String? state;
  String? assemblyId;
  String? gender;
  String? committee;
  String? commPosition;
  String? partyName;

  Lawmaker(
      {this.id,
      this.fullname,
      this.phoneNo,
      this.officePhoneNo,
      this.email,
      this.constId,
      this.districtId,
      this.appointmentYear,
      this.appointmentEnddate,
      this.type,
      this.party,
      this.photo,
      this.bio,
      this.status,
      this.dateCreated,
      this.code,
      this.serialno,
      this.state,
      this.assemblyId,
      this.gender,
      this.committee,
      this.commPosition,
      this.partyName});

  Lawmaker.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullname = json['fullname'];
    phoneNo = json['phone_no'];
    officePhoneNo = json['office_phone_no'];
    email = json['email'];
    constId = json['const_id'];
    districtId = json['district_id'];
    appointmentYear = json['appointment_year'];
    appointmentEnddate = json['appointment_enddate'];
    type = json['type'];
    party = json['party'];
    photo = json['photo'];
    bio = json['bio'];
    status = json['status'];
    dateCreated = json['date_created'];
    code = json['code'];
    serialno = json['serialno'];
    state = json['state'];
    assemblyId = json['assembly_id'];
    gender = json['gender'];
    committee = json['committee'];
    commPosition = json['comm_position'];
    partyName = json['party_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullname'] = this.fullname;
    data['phone_no'] = this.phoneNo;
    data['office_phone_no'] = this.officePhoneNo;
    data['email'] = this.email;
    data['const_id'] = this.constId;
    data['district_id'] = this.districtId;
    data['appointment_year'] = this.appointmentYear;
    data['appointment_enddate'] = this.appointmentEnddate;
    data['type'] = this.type;
    data['party'] = this.party;
    data['photo'] = this.photo;
    data['bio'] = this.bio;
    data['status'] = this.status;
    data['date_created'] = this.dateCreated;
    data['code'] = this.code;
    data['serialno'] = this.serialno;
    data['state'] = this.state;
    data['assembly_id'] = this.assemblyId;
    data['gender'] = this.gender;
    data['committee'] = this.committee;
    data['comm_position'] = this.commPosition;
    data['party_name'] = this.partyName;
    return data;
  }
}
