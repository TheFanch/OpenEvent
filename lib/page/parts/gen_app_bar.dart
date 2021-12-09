import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../page_menu.dart';

class GenAppBar extends StatelessWidget implements PreferredSizeWidget {
  GenAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

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
          onPressed: null //() {  },
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
