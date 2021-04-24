import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:final_project/components/Body.dart';

class NewRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new CameraAccess(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class CameraAccess extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CameraAccessState();
  }
}

class CameraAccessState extends State<CameraAccess> {
  File cameraFile;

  @override
  Widget build(BuildContext context) {
    //display image selected from gallery
    selectFromCamera() async {
      File cameraFile = (await ImagePicker.platform.pickImage(
        source: ImageSource.camera,
        // maxHeight: 50.0,
        // maxWidth: 50.0,
      )) as File;
      setState(() {});
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Select/Capture Image for Record"),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          Text("",textScaleFactor: 3,)
        ],
      ),
      body: new Builder(
        builder: (BuildContext context) {
          return Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                    child: new Text('Select Image from Camera'),
                    onPressed: selectFromCamera
                ),
                SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: cameraFile == null
                      ? Center(child: new Text('Sorry nothing selected!!'))
                      : Center(child: new Image.file(cameraFile)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}