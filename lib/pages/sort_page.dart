import 'package:my_vocabulary/model/vocabulary.dart';
import 'package:my_vocabulary/pages/intro_page.dart';
import 'package:my_vocabulary/servises/io_servises.dart';

class SortPage{
  SortPage(){sortPage();}

  void sortPage(){
    print('1. Sort by Date');
    print('2. Sort randomize');
    print('3. Back');

    int command = io.number;

    if(command == 1){
      Vocabulary.words.sort();
      IntroPage();
    }else if(command == 2){
      Vocabulary.words.shuffle();
      IntroPage();
    }else{
      IntroPage();
    }
  }
}