class DogsBreedModel {
  DogsBreedModel({
    this.message,
    this.status,
  });

  DogsBreedModel.fromJson(dynamic json) {
    message = json['message'] != null ? json['message'].cast<String>() : [];
    status = json['status'];
  }

  List<String>? message;
  String? status;

  DogsBreedModel copyWith({
    List<String>? message,
    String? status,
  }) =>
      DogsBreedModel(
        message: message ?? this.message,
        status: status ?? this.status,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['status'] = status;
    return map;
  }
}
