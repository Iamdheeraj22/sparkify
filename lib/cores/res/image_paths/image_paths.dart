class ImagePaths {
  //Singleton factory
  factory ImagePaths() {
    return _instance;
  }

  ImagePaths._internal();

  static final ImagePaths _instance = ImagePaths._internal();
  static const String onBoardingPath = 'assets/on_boarding/';

  static const String onBoarding1 = '${onBoardingPath}on_boarding_one.png';
  static const String onBoarding2 = '${onBoardingPath}on_boarding_two.png';
  static const String onBoarding3 = '${onBoardingPath}on_boarding_three.png';
}
