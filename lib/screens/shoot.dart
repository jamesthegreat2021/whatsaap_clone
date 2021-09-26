import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Shooter extends StatefulWidget {
  Shooter({Key? key}) : super(key: key) {
    initializeCameras();
  }

  late List<CameraDescription> cameras;

  void initializeCameras() async {
    cameras = await availableCameras();
  }

  @override
  _ShooterState createState() => _ShooterState();
}

class _ShooterState extends State<Shooter> {
  // late CameraController _cameraController;

  // @override
  // void initState() {
  //   super.initState();
  //   _cameraController =
  //       CameraController(widget.cameras[1], ResolutionPreset.low);
  //   _cameraController.initialize().then((value) => {
  //         if (mounted) {setState(() {})}
  //       });
  // }

  // @override
  // void dispose() {
  //   _cameraController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // body: CameraPreview(_cameraController),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_off),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle,
              size: 80,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flip_camera_ios),
            label: '',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {},
      ),
    );
  }
}
