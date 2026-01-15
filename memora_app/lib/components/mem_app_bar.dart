import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MemAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Memora",
        style: GoogleFonts.poppins(
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: TextButton.icon(
            onPressed: () => print("Clicked"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
            label: Text(
              "New",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
