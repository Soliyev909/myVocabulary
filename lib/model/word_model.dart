class Word implements Comparable<Word> {
  int id;
  Map<String, String> word;
  static int count = 3;
  String createdAt;
  bool memorized;

  Word(this.id,this.word,this.createdAt, [this.memorized = false]);

  @override
  String toString(){
    return '$id $word $memorized';
  }

  @override
  int compareTo(Word other) {
    return createdAt.compareTo(other.createdAt);
  }
}