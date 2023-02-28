import 'package:my_vocabulary/model/word_model.dart';
import 'package:my_vocabulary/pages/edit_word_page.dart';
import 'package:my_vocabulary/model/vocabulary.dart';
import 'package:my_vocabulary/servises/io_servises.dart';

editWord(Word word){
  print('1. Edit word');
  print('2. Edit translate');
  print('3. Delete');
  print('\n4. Back');

  int command = io.number;

  if(command == 1){
    print('Add new word');
    String newWord = io.text;
    word.word.updateAll((key, value) => key = newWord);
    print('Word updated!');
    EditWord();
  }else if(command == 2){
    print('Add new translate');
    String newTranslate = io.text;
    word.word.updateAll((key, value) => value = newTranslate);
    print('Translate updated!');
    EditWord();
  }else if(command == 3){
    Vocabulary.words.remove(word);
    EditWord();
  }else if(command == 4){
    EditWord();
  }else{
    print('Wrong command');
    EditWord();
  }
}