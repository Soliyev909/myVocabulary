import 'package:my_vocabulary/model/vocabulary.dart';

dictionary(){
  for(final item in Vocabulary.words){
    item.word.forEach((key,value) {
      print('${item.id}. $key : $value');
    });
  }
}