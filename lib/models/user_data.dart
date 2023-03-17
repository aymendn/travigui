// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserData {
  final String id;
  final String nom;
  final String prenom;
  final String email;
  final String password;
  final String phone;
  final double latitude;
  final double longitude;
  final String? picture;
  final String bio;
  final List<String> services;
  final List<String> interrests;
  final Map? reviews;

  UserData({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.email,
    required this.password,
    required this.phone,
    this.latitude = 3.1717269,
    this.longitude = 36.7050342,
    this.picture,
    this.bio = '',
    this.services = const [],
    this.interrests = const [],
    this.reviews,
  });



  UserData copyWith({
    String? id,
    String? nom,
    String? prenom,
    String? email,
    String? password,
    String? phone,
    double? latitude,
    double? longitude,
    String? picture,
    String? bio,
    List<String>? services,
    List<String>? interrests,
    Map? reviews,
  }) {
    return UserData(
      id: id ?? this.id,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      picture: picture ?? this.picture,
      bio: bio ?? this.bio,
      services: services ?? this.services,
      interrests: interrests ?? this.interrests,
      reviews: reviews ?? this.reviews,
    );

 
  }

     factory UserData.empty() {
    return UserData(
      id: '',
      nom: '',
      prenom: '',
      email: '',
      password: '',
      phone: '',
      latitude: 3.1717269,
      longitude: 36.7050342,
      picture: 'https://api.lorem.space/image/face?w=150&h=150',
      bio: 'Looking for a job',
      services: [],
      interrests: [],
      reviews: {},
    );
  }

  bool isAuth() {
    return id.isNotEmpty;
  }

  bool isServiceSelected(String service) {
    return services.contains(service);
  }

}
