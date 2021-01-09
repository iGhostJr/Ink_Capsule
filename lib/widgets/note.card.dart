import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key key,
    @required this.locked,
  }) : super(key: key);

  final bool locked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/note');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 7.5,
          horizontal: 10
        ),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(12.5),
          strokeWidth: 3,
          strokeCap: StrokeCap.round,
          dashPattern: locked
            ? [1, 1]
            : [8, 4],
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: locked
                    ? Icon(Icons.lock, size: 45)
                    : Icon(Icons.lock_open, size: 45,)
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Note Title',
                        style: TextStyle(fontSize: 28),
                      ),
                      SizedBox(height: 10,),
                      Text('Note Content',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}