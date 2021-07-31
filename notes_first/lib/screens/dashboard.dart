import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notes_list.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes of School'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/rafael_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Material(
              color: Theme.of(context).accentColor,
              child: InkWell(

                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotesList(), //criar
                    ));
                  },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(color: Colors.black, spreadRadius: 6),
                    ],
                  ),
                  padding: EdgeInsets.all(8.0),
                  height: 100,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.wysiwyg,
                        color: Colors.blueGrey,
                        size: 24.0,
                      ),
                      Text(
                        'Notes',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
