import 'package:mas_faxil/src/models/category_model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../manager/dummy.dart';

class CategorySelectionPageController extends ControllerMVC{
  factory CategorySelectionPageController (){
    if (_this== null) _this= CategorySelectionPageController._(); //sirve??
    return _this;
  }
  static CategorySelectionPageController _this = CategorySelectionPageController._();
  CategorySelectionPageController._();

  String get text1 => Dummy.category1.name!;
  String get text2 => Dummy.category2.name!;
}