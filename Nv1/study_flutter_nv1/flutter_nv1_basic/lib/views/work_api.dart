import 'package:flutter/material.dart';

import '../controllers/posts_controller.dart';
import '../widgets_personalizaveis/custom.button.widget.dart';

class WorkApi extends StatefulWidget {
  const WorkApi({super.key});

  @override
  State<WorkApi> createState() => _WorkApiState();
}

class _WorkApiState extends State<WorkApi> {
  final PostsController _controller = PostsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ValueListenableBuilder<List<Post>>(
              AnimatedBuilder(
                  animation: Listenable.merge(
                      [_controller.posts, _controller.inLoader]),
                  builder: (_, __) => _controller.inLoader.value
                      ? CircularProgressIndicator()
                      : ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _controller.posts.value.length,
                          itemBuilder: (_, index) => ListTile(
                              title:
                                  Text(_controller.posts.value[index].title)),
                        )),
              SizedBox(height: 20),
              CustomButtonWidget(
                onPressed: () => _controller.callAPI(),
                title: "Button",
                titleSize: 18,
              ),
            ],
          ),
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     // Navigator.of(context).pushNamed('/twoPage', arguments: 'Teste')
        //     Navigator.of(context).pushReplacementNamed('/twoPage', arguments: 'Teste')
        //     .then((value) => print(value));
        //   },
        //   child: Text("Ir para a Segunda Page")
        // ),
      ),
    );
  }
}
