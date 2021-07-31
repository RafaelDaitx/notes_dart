import 'package:flutter/material.dart';
import 'package:notes_first/models/note.dart';

class NotesList extends StatefulWidget {
  @override
  _NotesLsitState createState() => _NotesLsitState();
}

class _NotesLsitState extends State<NotesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Notes'),
      ),
      body: FutureBuilder<List>(
        initialData: List(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text('Loading')
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Note> contacts = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Note contact = contacts[index];
                  return _ContactItem(contact);
                },
                itemCount: contacts.length,
              );
              break;
          }
          return Text('Unknown error');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotesForm(),),).then(value) => setState((){}),
          child:
          Icon(
            Icons.add,
            size: 24.0,
          );
        },
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final Note contact;

  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.titleNote,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          contact.textNote.toString(),
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
