import 'package:mvc_pattern/mvc_pattern.dart';

class HomePageController extends ControllerMVC{
  factory HomePageController(){
     if (_this == null) _this= HomePageController._();
    return _this;
  }
  static late HomePageController _this;
  HomePageController._();

  static HomePageController get con => _this;

}