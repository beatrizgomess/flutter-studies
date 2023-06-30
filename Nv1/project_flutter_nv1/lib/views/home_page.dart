import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_flutter_nv1/controllers/home_controller.dart';
import 'package:project_flutter_nv1/models/post_model.dart';
import 'package:project_flutter_nv1/repositories/home_repository_imp.dart';
import 'package:project_flutter_nv1/repositories/home_repository_mock.dart';
import 'package:project_flutter_nv1/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
            PrefesService.logout();
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
           
            },
            icon: const Icon(Icons.logout))
        ],
        title: const Text('Home'),
      ),
      body: ValueListenableBuilder<List<Post>>(
        valueListenable: _controller.posts,
        builder: (_,list,__ ){
          return ListView.separated(
            itemCount: list.length,
            itemBuilder: (_, index) => ListTile(
              leading: Text(list[index].id.toString()),
              trailing: const Icon(Icons.arrow_circle_right),
              title: Text(list[index].title),
              onTap: () => Navigator.of(context).pushNamed('/details', arguments: list[index]),
              ),
              separatorBuilder: (_,__) => const Divider(),
            );
          },
        ),
    );
  }
}