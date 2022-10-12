import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_community_nitrr/profile_list.dart';
import 'package:flutter_community_nitrr/Widgets/profile_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  ProfileList profiles = ProfileList();
  @override
  Widget build(BuildContext context) {

    double Height=MediaQuery.of(context).size.height;
    double Width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('NITRR FLUTTER COMMUNITY',style: GoogleFonts.righteous(fontSize: 20),)),),
      body: SafeArea(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: profiles.profileList.length,
            itemBuilder: (context,index){
              return ProfileTab(num: profiles.profileList[index].picNum, name: profiles.profileList[index].name, branch: profiles.profileList[index].branch);
            }
        ),
      ),
    );
  }
}
