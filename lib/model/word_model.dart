class Word implements Comparable<Word> {
  int id;
  Map<String, String> word;
  static int count = 3;
  String createdAt;

  Word(this.id,this.word,this.createdAt);

  @override
  String toString(){
    return '$id $word';
  }

  @override
  int compareTo(Word other) {
    return createdAt.compareTo(other.createdAt);
  }
}