import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../page_menu.dart';

class GenAppBar extends StatelessWidget implements PreferredSizeWidget {
  GenAppBar({Key? key, required this.title, required this.isHomepage}) : super(key: key);

  final String title;
  bool isHomepage;

  @override
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    print(title);
    return AppBar(
      leading: IconButton(
          icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[800],
              size: 20
          ),
          onPressed: () { if(!isHomepage) Navigator.pop(context); },
      ),
      title: Text(
        title,
        style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w800
        ),
      ),
      actions: [
        MainMenu(),
      ],
      centerTitle: true,
      backgroundColor: Colors.greenAccent,
    );
  }

}
