import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Function to open a website
  void _launchWebsite() async {
    const url =
        'https://diamondhuge.com/?g=127241156&c=9'; // Replace with your desired website URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background Image with margin
              Container(
                margin: EdgeInsets.only(
                    top: 20.0), // Adjust the top margin as needed
                child: Image.asset(
                  'img/bg.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),

              // Top-Aligned Button with margin
              Container(
                margin: EdgeInsets.only(
                    top: 325.0), // Adjust the top margin as needed
                alignment: Alignment.topCenter,
                child: Container(
                  width: 275, // Replace with your desired width
                  height: 70, // Replace with your desired height
                  child: ElevatedButton(
                    onPressed: () {
                      // Call the function to open the website
                      _launchWebsite();
                    },
                    child: Text(
                      'Download Now',
                      style: TextStyle(
                        color: Color.fromRGBO(
                            80, 74, 74, 1), // Change the text color as needed
                        fontSize: 25.0, // Change the font size as needed
                        fontWeight:
                            FontWeight.bold, // Adjust the font weight as needed
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Adjust the radius as needed
                        side: BorderSide(
                          color: Color.fromARGB(
                              253, 255, 255, 255), // White color for the border
                          width: 2.0, // Adjust the border width as needed
                        ),
                      ),
                      primary: Color.fromARGB(255, 144, 234, 74),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
