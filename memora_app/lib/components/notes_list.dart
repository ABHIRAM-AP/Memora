import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  int selectedIndex = 0;
  final List<String> notes = [
    'Golang',
    'javascript',
    'python',
    'java',
    'Erlang',
    'Rust',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.only(top: 8),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final isSelected = index == selectedIndex;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Material(
                color: isSelected ? Colors.black : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                child: ListTile(
                  title: Text(
                    notes[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}
