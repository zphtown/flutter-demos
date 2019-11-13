import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoApp extends StatefulWidget {
  @override
  _PhotoAppState createState() => _PhotoAppState();
}

class _PhotoAppState extends State<PhotoApp> {
    List<File> _images = [];

    getImage() {
        showModalBottomSheet(context: context, builder: (context) => Container(
           height: 160,
           child: Column(
               children: <Widget>[
                   _item('拍照'),
                   _item('从相册选择'),
               ],
           )
        ));
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Image Picker Example'),
            ),
            body: Center(
                child: _images.length > 0 ? Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _getImagesWidget()
                ) : Text('Sorry，No Image!')
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: getImage,
                tooltip: 'Pick Image',
                child: Icon(Icons.add_a_photo),
            ),
        );
    }

  _item(String type) {
        bool isCamera = type == '拍照';
        return GestureDetector(
            child: ListTile(
                leading: Icon(isCamera ? Icons.camera : Icons.photo_size_select_actual),
                title: Text(type),
                onTap: () => _itemClick(isCamera),
            )
        );
  }

  Future _itemClick(bool isCamera) async {
    Navigator.pop(context);
    var image = await ImagePicker.pickImage(source: isCamera ? ImageSource.camera : ImageSource.gallery);
    setState(() {
        _images.add(image);
    });
  }

  _getImagesWidget() {
    return _images.map((file) {
        return Stack(
            children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(file, width: 120, height: 100, fit: BoxFit.fill, semanticLabel: 'hello image')
                ),
                Positioned(
                    right: 5,
                    top: 5,
                    child: GestureDetector(
                        child: ClipOval(
                            child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Colors.black54
                                ),
                                child: Icon(Icons.close, color: Colors.white, size: 10),
                            ),
                        ),
                        onTap: () {
                            setState(() {
                              _images.remove(file);
                            });
                        }
                    ),
                )
            ],
        );
    }).toList();
  }
}
