import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/Curved_Container.dart';
import 'package:hiremi_version_two/Custom_Widget/Elevated_Button.dart';
import 'package:hiremi_version_two/Custom_Widget/SliderPageRoute.dart';
import 'package:hiremi_version_two/Custom_Widget/TextFeild.dart';
import 'package:hiremi_version_two/bottomnavigationbar.dart';
import 'package:hiremi_version_two/Register.dart';
import 'package:hiremi_version_two/screens/Drawer_Child_Screens/Forget_Password/ForgetPassword.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double calculatedSemiCircleWidth =   MediaQuery.of(context).size.width * 0.08;
    double imageSize = MediaQuery.of(context).size.width * 0.6;
    double imageHeight = MediaQuery.of(context).size.height * 0.157;

    // List of image paths
    final List<String> imagePaths = [
      'images/Hiremi_new_Icon.png',
      'images/LogInImage.png',
    ];

    // Generate list of image widgets
    List<Widget> imageWidgets = List.generate(imagePaths.length, (index) {
      return Center(
        child: Image.asset(
          imagePaths[index],
          width: imageSize,
          height: imageHeight,
        ),
      );
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // List of images generated using List.generate
              ...imageWidgets,

              SizedBox(height: MediaQuery.of(context).size.height * 0.036),

              // RichText above the reusable CurvedContainer
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Let's sign you in,\n",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "We're waiting for you",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.0185),

              // Reusable CurvedContainer
              CurvedContainer(
                backgroundColor: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.0185),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Email Address",
                              style: TextStyle(
                                color: Colors.black
                              )
                            ),
                            TextSpan(
                              text: " *",
                              style: TextStyle(color: Colors.red,), // Red asterisk
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.0215),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: const CurvedTextField(
                        hintText: "youremail@gmail.com",
                        prefixIcon: Icons.account_circle,
                        obscureText: false,

                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.0185),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Password",
                                style: TextStyle(
                                    color: Colors.black
                                )
                            ),
                            TextSpan(
                              text: " *",
                              style: TextStyle(color: Colors.red), // Red asterisk
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.0205),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: const CurvedTextField(
                        hintText: "********",
                        prefixIcon: Icons.lock,
                        obscureText: true,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.00085),
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue, // Change this to the color you want
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            SlidePageRoute(page: const ForgetPassword()),
                          );
                        },
                        child: const Text(
                          'Forget Password?',

                          style: TextStyle(color: Colors.blueAccent), // Adjust text color as needed
                        ),
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.0027),
                    Center(
                      child: CustomElevatedButton(
                        width:  MediaQuery.of(context).size.width*0.775,
                        height:  MediaQuery.of(context).size.height*0.0625,
                        text: 'Login',
                        onPressed: () {
                          Navigator.push(
                            context,
                            SlidePageRoute(page: const NewNavbar(isV: false,)),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.009),
                    const Center(child: Text("By clicking Login, you agree to Hiremi’s Terms & Conditions.",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.0205),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.01),
                            child: const Text(
                              "or",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.018),
                    Center(
                      child: CustomElevatedButton(
                        color: const Color(0xFFF5F4F4),
                        width: MediaQuery.of(context).size.width * 0.775,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        text: 'Register Now',
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400

                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            SlidePageRoute(page: const Registers()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.018),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
