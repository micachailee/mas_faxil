import 'package:mas_faxil/src/models/category_model.dart';
import 'package:mas_faxil/src/models/tailoring_model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../manager/dummy.dart';
import '../../models/measure_model.dart';

class ObjectFormPageController extends ControllerMVC{
  factory ObjectFormPageController (){
    if (_this== null) _this= ObjectFormPageController._(); //sirve??
    return _this;
  }
  static ObjectFormPageController _this = ObjectFormPageController._();
  ObjectFormPageController._();


   List<MeasureModel> GetList()
   {
      return Dummy.measures;
  }



}