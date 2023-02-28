import 'package:my_vocabulary/model/vocabulary.dart';

import '../servises/edit_word_service.dart';
import '../servises/io_servises.dart';

class EditWord{
  EditWord(){editPage();}

  void editPage(){
    print('\t--Edit Page--');

    for(final item in Vocabulary.words){
      item.word.forEach((key,value) {
        print('${item.id}. $key : $value');
      });
    }

    print('${Vocabulary.words.length+1}. Back');

    int command = io.number;

    if(command > 0){
      editWord(Vocabulary.words[command-1]);
    }
  }

}