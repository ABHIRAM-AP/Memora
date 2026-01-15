class Note {
  final int? id;
  final String title;
  final String description;
  final DateTime createdAt;

  Note({
    this.id,
    this.title = "",
    this.description = "",
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'created_at': createdAt,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        createdAt: DateTime.parse(map['created_at']));
  }
}
