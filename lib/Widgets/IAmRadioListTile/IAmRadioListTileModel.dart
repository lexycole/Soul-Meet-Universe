class RadioListTileModel {
  int userId;
  String title;

  RadioListTileModel({
    required this.userId,
    required this.title,
  });

  static List<RadioListTileModel> getUsers() {
    return <RadioListTileModel>[
      RadioListTileModel(userId: 1, title: "Woman"),
      RadioListTileModel(userId: 2, title: "Man"),
      RadioListTileModel(userId: 3, title: "Choose another"),
    ];
  }
}