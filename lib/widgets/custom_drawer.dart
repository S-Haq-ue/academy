import 'package:academy/const_file.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key,});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 75.0,
                  child: Image.asset(
                    logo,
                    fit: BoxFit.cover,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "userDetails!.name",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Text(
                  "userDetails!.email",
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
