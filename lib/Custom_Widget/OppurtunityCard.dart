import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/Custom_alert_box.dart';
import 'package:hiremi_version_two/Fresher_Jobs.dart';
import 'package:hiremi_version_two/InternshipDetailScreen.dart';

class OpportunityCard extends StatelessWidget {
  const OpportunityCard({
    super.key,
    required this.dp,
    required this.role,
    required this.company,
    required this.location,
    required this.stipend,
    required this.mode,
    required this.exp,
    required this.type,
    required this.daysPosted,
    required this.isVerified,
  });

  final Image dp;
  final String role;
  final String company;
  final String location;
  final String stipend;
  final String mode;
  final int exp;
  final String type;
  final int daysPosted;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.219,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[300]!, // color of the frame
                    width: 3, // width of the frame
                  ),
                ),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.05,
                  backgroundColor: Colors.white,
                  child: dp,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    role,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    company,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Location and stipend
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_rounded,
                      color: Colors.grey, size: 8),
                  const SizedBox(width: 5),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 8),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.currency_rupee, color: Colors.grey, size: 8),
                  const SizedBox(width: 5),
                  Text(
                    stipend,
                    style: const TextStyle(fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFF6E5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.work_rounded,
                      size: 8,
                      color: Colors.amber,
                    ),
                    const SizedBox(width: 5),
                    Text(mode,
                        style: const TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFEEE5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.alarm,
                      size: 8,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(type,
                        style: const TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFE5EE),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.work_rounded,
                      size: 8,
                      color: Color(0xFFED509B),
                    ),
                    const SizedBox(width: 5),
                    Text('$exp Year Exp',
                        style: const TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (!isVerified) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              content: const CustomAlertbox());
                        });
                  }
                  else{
                    if(type == 'Job'){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const FresherJobsScreen()));
                    }
                    else{
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const InternshipsDetailsScreen()));
                    }
                    
                  }
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      WidgetStateProperty.all<Color>(const Color(0xFFC1272D)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                ),
                child: const Text(
                  'Apply Now >',
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width *
                0.92, // Length of the horizontal line
            height: 1, // Thickness of the line
            color: Colors.grey, // Color of the line
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              const Icon(
                Icons.track_changes_outlined,
                color: Colors.green,
                size: 8,
              ),
              const Text(
                'Actively Recruiting',
                style: TextStyle(color: Colors.green, fontSize: 8),
              ),
              const Spacer(),
              const Icon(
                Icons.av_timer,
                color: Colors.grey,
                size: 8,
              ),
              Text('$daysPosted days ago',
                  style: const TextStyle(color: Colors.grey, fontSize: 8))
            ],
          )
        ],
      ),
    );
  }
}
