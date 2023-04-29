// To parse this JSON data, do
//
//     final giftsModel = giftsModelFromJson(jsonString);

import 'dart:convert';

GiftsModel giftsModelFromJson(String str) =>
    GiftsModel.fromJson(json.decode(str));

String giftsModelToJson(GiftsModel data) => json.encode(data.toJson());

class GiftsModel {
  GiftsModel({
    this.status,
    this.message,
    this.userData,
  });

  int? status;
  String? message;
  UserData? userData;

  factory GiftsModel.fromJson(Map<String, dynamic> json) => GiftsModel(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        userData: json["data"] == null ? null : json["data"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": userData == null ? null : userData,
      };
}

class UserData {
  UserData(
      {this.emailId,
      this.password,
      this.name,
      this.surname,
      this.phoneNo,
      this.organization,
      this.country,
      this.gender,
      this.userType,
      this.about,
      this.currentCTC,
      this.linkedinLink,
      this.facebookLink,
      this.twitterLink,
      this.githubLink,
      this.keyword,
      this.workList,
      this.educationList,
      this.skillsList,
      this.projectsList});

  String? emailId,
      password,
      name,
      surname,
      phoneNo,
      organization,
      country,
      gender,
      userType,
      about,
      currentCTC,
      linkedinLink,
      facebookLink,
      twitterLink,
      githubLink,
      keyword;

  List<WorkExperienceModel>? workList;
  List<EducationModel>? educationList;
  List<SkillsListModel>? skillsList;
  List<ProjectsListModel>? projectsList;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        emailId: json["emailId"] == null ? null : json["emailId"],
        password: json["password"] == null ? null : json["password"],
        name: json["name"] == null ? null : json["name"],
        surname: json["surname"] == null ? null : json["surname"],
        phoneNo: json["phoneNo"] == null ? null : json["phoneNo"],
        organization:
            json["organization"] == null ? null : json["organization"],
        country: json["country"] == null ? null : json["country"],
        gender: json["gender"] == null ? null : json["gender"],
        userType: json["userType"] == null ? null : json["userType"],
        about: json["about"] == null ? null : json["about"],
        currentCTC: json["currentCTC"] == null ? null : json["currentCTC"],
        linkedinLink:
            json["linkedinLink"] == null ? null : json["linkedinLink"],
        facebookLink:
            json["facebookLink"] == null ? null : json["facebookLink"],
        twitterLink: json["twitterLink"] == null ? null : json["twitterLink"],
        githubLink: json["githubLink"] == null ? null : json["githubLink"],
        keyword: json["keyword"] == null ? null : json["keyword"],
        workList: json["workList"] == null
            ? null
            : List<WorkExperienceModel>.from(
                json["workList"].map((x) => WorkExperienceModel.fromJson(x))),
        educationList: json["educationList"] == null
            ? null
            : List<EducationModel>.from(
                json["educationList"].map((x) => EducationModel.fromJson(x))),
        skillsList: json["skillsList"] == null
            ? null
            : List<SkillsListModel>.from(
                json["skillsList"].map((x) => SkillsListModel.fromJson(x))),
        projectsList: json["projectsList"] == null
            ? null
            : List<ProjectsListModel>.from(
                json["projectsList"].map((x) => ProjectsListModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "emailId": emailId == null ? null : emailId,
        "password": password == null ? null : password,
        "name": name == null ? null : name,
        "surname": surname == null ? null : surname,
        "phoneNo": phoneNo == null ? null : phoneNo,
        "organization": organization == null ? null : organization,
        "country": country == null ? null : country,
        "gender": gender == null ? null : gender,
        "userType": userType == null ? null : userType,
        "about": about == null ? null : about,
        "currentCTC": currentCTC == null ? null : currentCTC,
        "linkedinLink": linkedinLink == null ? null : linkedinLink,
        "facebookLink": facebookLink == null ? null : facebookLink,
        "twitterLink": twitterLink == null ? null : twitterLink,
        "githubLink": githubLink == null ? null : githubLink,
        "keyword": keyword == null ? null : keyword,
        "workList": workList == null
            ? null
            : List<dynamic>.from(workList!.map((x) => x.toJson())),
        "educationList": educationList == null
            ? null
            : List<dynamic>.from(educationList!.map((x) => x.toJson())),
        "skillsList": skillsList == null
            ? null
            : List<dynamic>.from(skillsList!.map((x) => x.toJson())),
        "projectsList": projectsList == null
            ? null
            : List<dynamic>.from(projectsList!.map((x) => x.toJson())),
      };
}

class WorkExperienceModel {
  WorkExperienceModel(
      {this.jobTitle,
      this.employmentType,
      this.companyName,
      this.location,
      this.startDate,
      this.endDate,
      this.description,
      this.isCurrentlyWorkHere});

  String? jobTitle,
      employmentType,
      companyName,
      location,
      startDate,
      endDate,
      description;

  bool? isCurrentlyWorkHere;

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) =>
      WorkExperienceModel(
        jobTitle: json["jobTitle"] == null ? null : json["jobTitle"],
        employmentType:
            json["employmentType"] == null ? null : json["employmentType"],
        companyName: json["companyName"] == null ? null : json["companyName"],
        location: json["location"] == null ? null : json["location"],
        startDate: json["startDate"] == null ? null : json["startDate"],
        endDate: json["endDate"] == null ? null : json["endDate"],
        description: json["description"] == null ? null : json["description"],
        isCurrentlyWorkHere: json["isCurrentlyWorkHere"] == null
            ? null
            : json["isCurrentlyWorkHere"],
      );

  Map<String, dynamic> toJson() => {
        "jobTitle": jobTitle == null ? null : jobTitle,
        "employmentType": employmentType == null ? null : employmentType,
        "companyName": companyName == null ? null : companyName,
        "location": location == null ? null : location,
        "startDate": startDate == null ? null : startDate,
        "endDate": endDate == null ? null : endDate,
        "description": description == null ? null : description,
        "isCurrentlyWorkHere":
            isCurrentlyWorkHere == null ? null : isCurrentlyWorkHere,
      };
}

class EducationModel {
  EducationModel({
    this.collegeName,
    this.degree,
    this.field,
    this.grade,
    this.startDate,
    this.endDate,
    this.description,
    this.currentlyPursuing
  });

  bool? currentlyPursuing;
  String? collegeName, degree, field, grade, startDate, endDate, description;

  factory EducationModel.fromJson(Map<String, dynamic> json) => EducationModel(
      collegeName: json["collegeName"] == null ? null : json["collegeName"],
      degree: json["degree"] == null ? null : json["degree"],
      field: json["field"] == null ? null : json["field"],
      grade: json["grade"] == null ? null : json["grade"],
      startDate: json["startDate"] == null ? null : json["startDate"],
      endDate: json["endDate"] == null ? null : json["endDate"],
      description: json["description"] == null ? null : json["description"],
    currentlyPursuing: json["currentlyPursuing"] == null ? null : json["currentlyPursuing"],
  );

  Map<String, dynamic> toJson() => {
        "collegeName": collegeName == null ? null : collegeName,
        "degree": degree == null ? null : degree,
        "field": field == null ? null : field,
        "grade": grade == null ? null : grade,
        "startDate": startDate == null ? null : startDate,
        "endDate": endDate == null ? null : endDate,
        "description": description == null ? null : description,
        "currentlyPursuing": currentlyPursuing == null ? null : currentlyPursuing,
      };
}

class SkillsListModel {
  SkillsListModel({this.skill});

  String? skill;

  factory SkillsListModel.fromJson(Map<String, dynamic> json) =>
      SkillsListModel(skill: json["skill"] == null ? null : json["skill"]);

  Map<String, dynamic> toJson() => {"skill": skill == null ? null : skill};
}

class ProjectsListModel {
  ProjectsListModel({this.heading, this.url});

  String? heading, url;

  factory ProjectsListModel.fromJson(Map<String, dynamic> json) =>
      ProjectsListModel(
        heading: json["heading"] == null ? null : json["heading"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "heading": heading == null ? null : heading,
        "url": url == null ? null : url,
      };
}
