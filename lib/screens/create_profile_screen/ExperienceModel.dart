class CountriesModel {
  String code;
  String name;

  CountriesModel({
    required this.code,
    required this.name
  });

  factory CountriesModel.fromJson(Map<String, dynamic> json) => CountriesModel(
    code: json["code"] == null ? null : json["code"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "code": code == null ? null : code,
    "name": name == null ? null : name
  };
}


// class EducationModel {
//   String schoolCollageName;
//   String deegree;
//   String fieldOfStudy;
//   String grade;
//   String startDate;
//   String endDate;
//   String description;
//   bool currentlyPursuing;
//
//   EducationModel({
//     required this.schoolCollageName,
//     required this.deegree,
//     required this.fieldOfStudy,
//     required this.grade,
//     required this.startDate,
//     required this.endDate,
//     required this.description,
//     required this.currentlyPursuing,
//   });
// }


// class PortfolioModel {
//   String heading;
//   String url;
//
//   PortfolioModel({
//     required this.heading,
//     required this.url
//   });
// }