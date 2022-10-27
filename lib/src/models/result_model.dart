import 'package:mas_faxil/src/models/tailoring_model.dart';

import 'category_model.dart';
import 'package:flutter/material.dart';

import 'measure_model.dart';
import 'object_model.dart';
class ResultModel {
  ObjectModel? object;
  late List<MeasureModel> measure;
  double? result;
  late double width;
  late double height;
  ResultModel(ObjectModel? _object, List<MeasureModel> _measure){
    object = _object;
    measure = _measure;
  }
  double? forSkirt(){
    width= measure[0].measure!;
    height= measure[1].measure!;
    result= width*height;
    return result;
  }
}