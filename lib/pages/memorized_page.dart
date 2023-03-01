import 'package:my_vocabulary/model/word_model.dart';
import 'package:my_vocabulary/pages/intro_page.dart';

import '../servises/io_servises.dart';


  void memorized(Word word){
    print(word.word.toString());
    String memoryStr = 'Are: ';
    if(word.memorized){
      memoryStr += 'Memorized';
    }else{
      memoryStr += 'not Memorized';
    }
    print(memoryStr);

    print('Want to change?');
    print('\n1. Yes\n2. No');

    int command = io.number;

    if(command == 1){
      if(word.memorized){
        word.memorized = false;
      }else{
        word.memorized = true;
      }
      IntroPage();
    }else if(command == 2){
      IntroPage();
    }else{
      IntroPage();
    }
  }
