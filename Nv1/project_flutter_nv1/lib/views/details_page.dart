import 'package:flutter/material.dart';
import 'package:project_flutter_nv1/models/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Post args = ModalRoute.of(context)!.settings.arguments as Post;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.title, style: const TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.bold, 
              fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 24),
            Text(args.body, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            Text('Noticia : ${args.id.toString()},  Atuor: ${args.userId}', style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}