import 'package:flutter/material.dart';
import 'package:untitled/photo.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  PhotoDetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 250,
                width: 250,
                child: Image.network(photo.thumbnailUrl)),
            SizedBox(
              height: 8,
            ),
            Text(
              "Title : ${photo.title}",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "ID : ${photo.id}",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
