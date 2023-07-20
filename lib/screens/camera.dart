import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tycheapp_project/screens/Cards.dart';
import 'package:tycheapp_project/screens/balence_page.dart';
import 'package:tycheapp_project/screens/home_two.dart';
import 'package:tycheapp_project/screens/logout_screen.dart';
import 'package:tycheapp_project/screens/my_wallet.dart';
import 'package:tycheapp_project/screens/send_maney.dart';
import 'package:tycheapp_project/screens/transactions.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

Widget drawer(BuildContext context) {
  Future<void> requestCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      await Permission.camera.request();
    }
  }

  List<CameraDescription> cameras = []; // Initialize with an empty list

  Future<void> initCamera() async {
    cameras = await availableCameras();
  }

  Future<XFile?> takePhoto() async {
    if (cameras == null) {
      await initCamera();
    }

    if (cameras.isEmpty) {
      throw Exception('No cameras available');
    }

    final camera = cameras.first;
    final CameraController controller = CameraController(
      camera,
      ResolutionPreset.medium,
    );

    await controller.initialize();

    if (!controller.value.isInitialized) {
      throw Exception('Failed to initialize camera');
    }

    XFile? imageFile = await controller.takePicture();
    return imageFile;
  }

  Future<XFile?> pickImageFromGallery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image;
    } else {
      // Handle the case when image is null, e.g., throw an exception or return a default image.
      throw Exception('No image selected');
    }
  }

  return Drawer(
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 220, // Updated image height
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Vector 6 (2).png'), // Replace with your own image path
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 25,
              child: CircleAvatar(
                radius: 58,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "images/g1 1.png",
                        fit: BoxFit.cover,
                        width: 85,
                        height: 85,
                      ),
                    ),
                    Positioned(
                      bottom: 3, // Adjust the positioning as per your preference
                      right: -1, // Adjust the positioning as per your preference
                      child: GestureDetector(
                        onTap: () async {
                          await requestCameraPermission();
                          XFile? image = await pickImageFromGallery();
                          // Use the selected image for the avatar or handle it as needed
                          // For example, you can display the selected image in a CircleAvatar widget
                        },
                        child: Image.asset(
                          "images/3178179 2.png",
                          width: 20, // Adjust the size as per your preference
                          height: 20, // Adjust the size as per your preference
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 95,
              left: 155,
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              top: 116,
              left: 155,
              child: Text(
                "Lonnie Murphy",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomeTwo()),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/download 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/997982-200 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/4769216-200 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'My Wallet',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MyWallet()),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/download (1) 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Statistics',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/1751700 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Transaction',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Transaction()),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/4769216-200 2.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BalencePage()),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/send-money-icon-2 (1) 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Send Money',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SendManey()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 20,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => CardPage()),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    "images/logout 1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LogoutScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
