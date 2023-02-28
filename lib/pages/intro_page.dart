import 'package:my_vocabulary/model/vocabulary.dart';
import 'package:my_vocabulary/pages/create_new_word.dart';
import 'package:my_vocabulary/servises/io_servises.dart';

import 'edit_word_page.dart';
class IntroPage{
  IntroPage(){introPage();}

  void introPage(){
    print('\t--Welcome to My Vocabulary--');

    for(final item in Vocabulary.words){
      item.word.forEach((key,value) {
        print('${item.id}. $key : $value');
      });
    }

    print('\n\n1. Create new dictionary');
    print('2. Edit dictionary');
    print('3. Exit');

    int command = io.number;

    switch(command){
      case 1:{
        NewWord();
      } break;
      case 2:{
        EditWord();
      } break;
      case 3:{
        return;
      }
      default:{
        print('Error command');
        IntroPage();
      }
    }
  }
}
