import 'package:my_vocabulary/model/vocabulary.dart';
import 'package:my_vocabulary/model/word_model.dart';
import 'package:my_vocabulary/pages/intro_page.dart';
import 'package:my_vocabulary/servises/io_servises.dart';

class NewWord{
  NewWord(){
    addWord();
  }

  addWord(){
      print('Please enter the new word that you want to add');
      String key = io.text;

      print('Please enter the word that mean of the word');
      String value = io.text;

      Word newWord = Word(Word.count++, {key : value}, DateTime.now().toString());
      Vocabulary.words.add(newWord);

      for(final item in Vocabulary.words){
        item.word.forEach((key,value) {
          print('${item.id}. $key : $value');
        });
      }

      print('you want to continue adding ? ');
      print('1. yes            2.no');
      String choose = io.text;
      switch(choose){
        case '1':{
          addWord();
          break;
        }
        case '2':{
          IntroPage();
          break;
        }
        default :{

        }
      }
  }
}