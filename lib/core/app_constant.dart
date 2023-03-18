class AppConstant {
  const AppConstant._();

  static const String url = 'http://192.168.1.132:5000';
  static const String baseUrl = '$url/api/v1';
  static const String loginUrl = '$baseUrl/login';
  static const String registerUrl = '$baseUrl/register';
  static const String servicesUrl = '$baseUrl/getallservices';

  static const String logo = 'assets/images/logo.svg';
}

extension URI on String {
  Uri get uri => Uri.parse(this);
}
