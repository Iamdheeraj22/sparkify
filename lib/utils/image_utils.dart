import 'package:sparkify/cores/res/image_paths/image_paths.dart';

class ImageUtils {
  factory ImageUtils() {
    return _instance;
  }

  ImageUtils._internal();

  //Singleton factory
  static final ImageUtils _instance = ImageUtils._internal();

  // Method to get the image path
  List<String> onBoardingImages = [
    ImagePaths.onBoarding1,
    ImagePaths.onBoarding2,
    ImagePaths.onBoarding3,
  ];
}
