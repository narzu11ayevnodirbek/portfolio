class ProjectModel {
  final String title;
  final String description;
  final String imageUrl;

  ProjectModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      title: json["title"] ?? "",
      description: json["description"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
    );
  }
}
