import 'package:mas_faxil/src/models/category_model.dart';

import 'object_model.dart';

class UpholsteryModel implements CategoryModel{
  @override
  String? name = 'Tapiceria';
  @override
  ObjectModel? object1;
  @override
  ObjectModel? object2;

  UpholsteryModel() {
    object1= new ObjectModel('sillon', 'cuero');
    object2= new ObjectModel('puff', 'cuerina');
  }

}