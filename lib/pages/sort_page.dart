import 'package:my_vocabulary/model/vocabulary.dart';
import 'package:my_vocabulary/model/word_model.dart';
import 'package:my_vocabulary/pages/intro_page.dart';
import 'package:my_vocabulary/servises/io_servises.dart';

class SortPage {
  SortPage() {
    sortPage();
  }

  void sortPage() {
    print('1. Sort by Date');
    print('2. Sort randomize');
    print('3. Sort by Memorized');
    print('4. Back');
    int count = 0;
    for (int i = 0; i < Vocabulary.words.length; ++i) {
      if (Vocabulary.words[i].memorized) {
        count++;
      }
    }
    int command = io.number;

    if (command == 1) {
      Vocabulary.words.sort();
      IntroPage();
    } else if (command == 2) {
      Vocabulary.words.shuffle();
      IntroPage();
    } else if (command == 3) {
      List<Word> cash =
          Vocabulary.words.where((word) => word.memorized).toList();
      int n = 1;
      for (final item in cash) {
        item.word.forEach((key, value) {
          print('$n. $key : $value');
        });
        n++;
      }

      double result = 100 / Vocabulary.words.length;
      print(result * count);

      print('1. Back');
      int command = io.number;
      IntroPage();
    } else {
      IntroPage();
    }
  }
}
