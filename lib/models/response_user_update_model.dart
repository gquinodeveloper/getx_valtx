class ResponseUserUpdateModel {
    ResponseUserUpdateModel({
      this.name = "",
      this.job = "",
      this.updatedAt,
    });

    late String name;
    late String job;
    DateTime? updatedAt;

    factory ResponseUserUpdateModel.fromJson(Map<String, dynamic> json) => ResponseUserUpdateModel(
        name: json["name"],
        job: json["job"],
        updatedAt: DateTime.parse(json["updatedAt"]),
    );
}
