class Note{
  final int id;
  final String titleNote;
  final int textNote;

  Note(this.id, this.titleNote, this.textNote);

  @override
  String toString() {
    return 'All Notes {name:$id, $titleNote, accountName: $textNote}';
  }
}