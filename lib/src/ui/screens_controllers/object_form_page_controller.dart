import 'package:mas_faxil/src/models/category_model.dart';
import 'package:mas_faxil/src/models/tailoring_model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../models/measure_model.dart';

class ObjectFormPageController extends ControllerMVC{
  factory ObjectFormPageController (){
    if (_this== null) _this= ObjectFormPageController._(); //sirve??
    return _this;
  }
  static ObjectFormPageController _this = ObjectFormPageController._();
  ObjectFormPageController._();

  static int option = 1; //SERIA LA ELECCION DE A PAGINA ANTERIOR
  //En este caso el 1 seria sastreria
  List<String> current = MeasureModel.list1; // Por ahora xq no se donde se setearia

   List<String> GetList()
{
  if (option==1){
    current= MeasureModel.list1;
  }
  else{
    current= MeasureModel.list2;
  }
  return current;
}



}