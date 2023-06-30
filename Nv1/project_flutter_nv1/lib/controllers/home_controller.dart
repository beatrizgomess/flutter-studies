import 'package:flutter/material.dart';
import 'package:project_flutter_nv1/models/post_model.dart';
import 'package:project_flutter_nv1/repositories/home_repository.dart';

class HomeController{
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);

  //Busca - Retornando um fech de List Post 
  fetch() async{
    posts.value = await  _homeRepository.getList();
  }

  
}