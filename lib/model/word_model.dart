class Word{
  int id;
  Map<String, String> word;

  Word(this.id,this.word);

  @override
  String toString(){
    return '$id $word';
  }

}