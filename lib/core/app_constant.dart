class AppConstant {
  const AppConstant._();

  static const String url = 'http://192.168.1.132:5000';
  static const String baseUrl = '$url/api/v1';
  static const String loginUrl = '$baseUrl/login';
  static const String registerUrl = '$baseUrl/register';
  static const String servicesUrl = '$baseUrl/getallservices';

  static const String logo = 'assets/images/logo.svg';
  static const String createWork = 'assets/images/Create Work 1 (1).png';
  static const String digitalNomad = 'assets/images/Digital Nomad 1.png';
  static const String regestration = 'assets/images/Registration 1.png';
  static const String socialMedia = 'assets/images/Social Media 1 (1).png';
}

extension URI on String {
  Uri get uri => Uri.parse(this);
}
