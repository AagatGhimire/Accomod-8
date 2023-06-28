import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageUploader {
  final ImagePicker _picker = ImagePicker();

  Future<File?> selectImageFromCamera() async {
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      print('Camera image Path$image.path');
      return File(image.path);
    }
  }

  Future<File?> selectImageFromGallery() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      print('Gallery image Path$image.path');
      return File(image.path);
    }
  }

  // Future<File?> selectImage() async{
  //   final image = await
  // }
}
