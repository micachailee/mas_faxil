import '../models/category_model.dart';
import '../models/measure_model.dart';
import '../models/object_model.dart';
import '../models/result_model.dart';
import '../models/tailoring_model.dart';
import '../models/upholstery_model.dart';

class Dummy{
  static CategoryModel category1 = TailoringModel();
  static CategoryModel category2= UpholsteryModel();
  static CategoryModel currentCategory = TailoringModel( );
  static List<MeasureModel> measures = [
    MeasureModel('Cintura', 70),
    MeasureModel('Piernas', 115),
  ];
  static ObjectModel? object = currentCategory.object1;
  static ResultModel result = ResultModel(object, measures);
}