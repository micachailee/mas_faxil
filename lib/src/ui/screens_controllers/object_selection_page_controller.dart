import 'package:mvc_pattern/mvc_pattern.dart';
import '../../manager/dummy.dart';
import '../../models/category_model.dart';
import '../../models/tailoring_model.dart';

class ObjectSelectionPageController extends ControllerMVC{
  factory ObjectSelectionPageController (){
    if (_this== null) _this= ObjectSelectionPageController._(); //sirve??
    return _this;
  }
  static ObjectSelectionPageController _this = ObjectSelectionPageController._();
  ObjectSelectionPageController._();

  String get text1 => Dummy.category1.name!;
  String get text2 => Dummy.category2.name!;

  CategoryModel? GetCategory(){
    return Dummy.currentCategory;
  }
}