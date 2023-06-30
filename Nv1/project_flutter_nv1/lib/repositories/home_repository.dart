//Contrato  - SOLID 

import 'package:project_flutter_nv1/models/post_model.dart';

abstract class HomeRepository{
  Future<List<Post>> getList();

}