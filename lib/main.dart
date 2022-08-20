import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tensorflow/object_detection_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const App());
}

List<CameraDescription> cameras = [];

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, splashFactory: InkSplash.splashFactory),
      debugShowCheckedModeBanner: false,
      home: const ObjectDetectionScreen(),
    );
  }
}
