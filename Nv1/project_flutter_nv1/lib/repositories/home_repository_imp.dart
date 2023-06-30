import 'package:dio/dio.dart';
import 'package:project_flutter_nv1/models/post_model.dart';
import 'package:project_flutter_nv1/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository{

 
  @override
  Future<List<Post>> getList() async {
  try{
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    return (response.data as List).map((e) => Post.fromJson(e)).toList();
    }catch (e){
      print(e);
    }
    return [];
  }
  
  
}