
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main()
{
  runApp(const TodoApp());
  /*runApp(DevicePreview(
    enabled: kDebugMode,
    builder: (BuildContext context) => TodoApp())
  );*/
}

