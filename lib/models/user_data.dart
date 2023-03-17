

class UserData {
  UserData({
    required this.score,
    String? displayName,
    String? email,
    String? photoURL,
  }) {
    _name = displayName;
    _email = email;
    _photoURL = photoURL;
  }
  final int score;
  String? _name;
  String? _email;
  String? _photoURL;



  factory UserData.empty() => UserData(score: 0);
}
