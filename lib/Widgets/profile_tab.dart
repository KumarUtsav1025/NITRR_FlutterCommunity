import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab({Key? key, required this.num,required this.name,required this.branch}) : super(key: key);

  int num;
  String name;
  String branch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: const Color(0xffFBD34C),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      height: 100.0,
      child: Row(
        children: [
          const SizedBox(width: 10.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: const Color(0xff10163A),
              radius: 40.0,
              backgroundImage: AssetImage('assets/Images/ProfilePics/$num.png'),
              ),
          ),
          const SizedBox(width: 10.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,style: GoogleFonts.acme(fontSize: 32.0,color: Colors.black),),
              Text(branch,style: GoogleFonts.righteous(fontSize: 20.0,color: Colors.black)),
            ],
          )
        ],
      ),
    );
  }
}
