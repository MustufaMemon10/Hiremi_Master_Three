import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/OppurtunityCard.dart';


import 'package:hiremi_version_two/Notofication_screen.dart';

class InternshipsScreen extends StatelessWidget {
  //const InternshipsScreen({super.key, required this.isVerified});
  const InternshipsScreen({super.key, required this.isVerified});
  final bool isVerified;


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Internships',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const NotificationScreen()));
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04), // 4% of screen width
          child: Center(
            child: Column(
              children: [
                Container(
                  width: screenWidth * 0.95, // 95% of screen width
                  height: screenHeight * 0.1, // 10% of screen height
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF6E01), Color(0xFFFEBC0D)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth * 0.04, // 4% of screen width
                      ),
                      Container(
                        width: screenWidth * 0.08, // 8% of screen width
                        height: screenWidth * 0.08, // 8% of screen width
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.spa,
                          size: screenWidth * 0.04, // 4% of screen width
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02, // 2% of screen width
                      ),
                      Text(
                        'Internships',
                        style: TextStyle(
                            fontSize: screenWidth * 0.045, // 4.5% of screen width
                            color: Colors.white),
                      ),
                      const Spacer(),
                      Container(
                        width: screenWidth * 0.23, // 23% of screen width
                        height: screenWidth * 0.23, // 23% of screen width
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.spa,
                          color: Colors.orange,
                          size: screenWidth * 0.1, // 10% of screen width
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03, // 3% of screen height
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Available Internships (2)',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                SizedBox(
                  height: screenHeight * 0.03, // 3% of screen height
                ),
                OpportunityCard(
                  dp: Image.asset('images/Rectangle 57.png'),
                  role: 'Human Resource Intern',
                  company: 'Hiremi',
                  location: 'Bhopal, Madhya Pradesh, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                  isVerified: isVerified,
                ),
                SizedBox(
                  height: screenHeight * 0.01, // 1% of screen height
                ),
                OpportunityCard(
                  dp: Image.asset('images/crtd1 1.png'),
                  role: 'Social Media Intern',
                  company: 'CRTD Technologies',
                  location: 'Bhopal, Madhya Pradesh, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                  isVerified: isVerified,
                ),
                SizedBox(
                  height: screenHeight * 0.03, // 3% of screen height
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Upcoming Internships (1)',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                SizedBox(
                  height: screenHeight * 0.03, // 3% of screen height
                ),
                OpportunityCard(
                  dp: Image.asset('images/Rectangle 57.png'),
                  role: 'Data Science Intern',
                  company: 'Hiremi',
                  location: 'Bhopal, Madhya Pradesh, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                  isVerified: isVerified,
                ),
                const SizedBox(height: 64,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}