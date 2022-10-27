import 'package:mas_faxil/src/models/tailoring_model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../manager/dummy.dart';
import '../../models/object_model.dart';
import '../../models/result_model.dart';

class ResultPageController extends ControllerMVC{
  factory ResultPageController (){
    if (_this== null) _this= ResultPageController._(); //sirve??
    return _this;
  }
  static ResultPageController _this = ResultPageController._();
  ResultPageController._();
  ResultModel? result = Dummy.result;
  ObjectModel? object = Dummy.object;
  }
