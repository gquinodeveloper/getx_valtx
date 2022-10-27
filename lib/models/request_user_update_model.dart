class RequestUserUpdateModel {
    RequestUserUpdateModel({
      required this.name,
      required this.job,
    });

    String name;
    String job;

    Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
    };
}
