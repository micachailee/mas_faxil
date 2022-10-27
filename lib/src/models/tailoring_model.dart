import 'package:mas_faxil/src/models/category_model.dart';

import 'object_model.dart';

class TailoringModel implements CategoryModel{
  @override
  String? name = 'Sastreria';
  @override
  ObjectModel? object1;
  @override
  ObjectModel? object2;

  TailoringModel() {
    object1= new ObjectModel('pollera', 'algodón');
    object2= new ObjectModel('pantalon', 'vaquera');
  }


}