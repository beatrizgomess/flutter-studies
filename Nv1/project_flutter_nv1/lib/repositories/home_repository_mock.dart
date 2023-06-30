import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:project_flutter_nv1/models/post_model.dart';
import 'package:project_flutter_nv1/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository{


  @override
  Future<List<Post>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => Post.fromJson(e)).toList();
  }
  
}