import 'package:flutter/material.dart';
import 'package:wifi_scan/wifi_scan.dart';
import 'package:local_auth/local_auth.dart';
import 'dart:async';

class StudentInterface extends StatefulWidget {
  @override
  _StudentInterfaceState createState() => _StudentInterfaceState();
}

class _StudentInterfaceState extends State<StudentInterface> {
  List<WiFiAccessPoint> _networks = [];
  final LocalAuthentication auth = LocalAuthentication();
  bool _isScanning = true; // Track scanning status

  @override
  void initState() {
    super.initState();
    scanNetworks();
  }

  Future<void> scanNetworks() async {
    CanStartScan canStartScan = await WiFiScan.instance.canStartScan();
    if (canStartScan == CanStartScan.yes) {
      WiFiScan.instance.startScan();
      WiFiScan.instance.onScannedResultsAvailable.listen((results) {
        setState(() {
          _networks = results;
          _isScanning = false; // Scanning complete
        });
      });
    } else {
      setState(() {
        _isScanning = false;
      });
      print("Cannot start Wi-Fi scan.");
    }
  }

  void connectToNetwork(String ssid) async {
    String? password = await _getPasswordFromUser();
    if (password != null && password.isNotEmpty) {
      bool isConnected = await _connectToWifi(ssid, password);
      if (isConnected) {
        authenticateUser();
      } else {
        print("Failed to connect to the network.");
      }
    } else {
      print("Password is required to connect to the network.");
    }
  }

  Future<bool> _connectToWifi(String ssid, String password) async {
    return Future.delayed(Duration(seconds: 2), () => true);
  }

  Future<void> authenticateUser() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to mark your attendance',
        options: AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      if (authenticated) {
        markAttendance();
      } else {
        print("Authentication failed.");
      }
    } catch (e) {
      print(e);
    }
  }

  void markAttendance() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Attendance marked successfully!")),
    );
  }

  Future<String?> _getPasswordFromUser() async {
    return await showDialog<String>(
      context: context,
      builder: (context) {
        TextEditingController _passwordController = TextEditingController();
        return AlertDialog(
          title: Text("Enter Password"),
          content: TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(null);
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(_passwordController.text);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final containerHeight = size.height / 2;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: containerHeight,
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Image.asset('assets/pic.png', width: 150, height: 150),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/wifi2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                _isScanning
                    ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 10),
                      Text('Searching for networks...'),
                    ],
                  ),
                )
                    : _networks.isEmpty
                    ? Center(child: Text('No networks found'))
                    : GridView.builder(
                  padding: EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: _networks.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => connectToNetwork(_networks[index].ssid),
                      child: Column(
                        children: [
                          Icon(Icons.wifi, size: 50, color: Colors.blue),
                          SizedBox(height: 5),
                          Text(
                            _networks[index].ssid,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
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
}
