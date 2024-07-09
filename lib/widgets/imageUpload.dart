import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUploadPage extends StatefulWidget {
  @override
  _ImageUploadPageState createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: _image == null
                  ? Text('No image selected.')
                  : Image.file(
                      _image!,
                      width: 300,
                      height: 300,
                    ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                icon: Icon(Icons.camera),
                label: Text('Pick from Camera'),
                onPressed: () {
                  _pickImage(ImageSource.camera);
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton.icon(
                icon: Icon(Icons.image),
                label: Text('Pick from Gallery'),
                onPressed: () {
                  _pickImage(ImageSource.gallery);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
