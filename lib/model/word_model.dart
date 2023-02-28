class Word{
  int id;
  Map<String, String> word;
  static int count = 3;
  Word(this.id,this.word);

  @override
  String toString(){
    return '$id $word';
  }

}