class AppHeadingStrings {
  factory AppHeadingStrings() {
    return _instance;
  }

  AppHeadingStrings._internal();

  static final AppHeadingStrings _instance = AppHeadingStrings._internal();

  static const String algorithm = 'Algorithm';
  static const String matches = 'Matches';
  static const String premium = 'Premium';
  static const String createAnAccountTxt = 'Create an account';
  static const String alreadyHaveAnAccountTxt = 'Already have an account? ';
  static const String loginTxt = 'Sign In';
}
