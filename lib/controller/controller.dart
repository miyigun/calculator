import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  String equation='';
  String conclusion='';

  void keyCFunction() {
    equation='';
    conclusion='';

    notifyListeners();
  }

  void keyBackSpaceFunction() {
    //Son yazılan karakter siliniyor
    equation=equation.substring(0,equation.length-1);
    //conclusion='';

    notifyListeners();
  }

  void keyZeroFunction() {
    equation=equation+'0';

    notifyListeners();
  }

  void keyOneFunction() {
    equation=equation+'1';

    notifyListeners();
  }

  void keyTwoFunction() {
    equation=equation+'2';

    notifyListeners();
  }

  void keyThreeFunction() {
    equation=equation+'3';

    notifyListeners();
  }

  void keyFourFunction() {
    equation=equation+'4';

    notifyListeners();
  }

  void keyFiveFunction() {
    equation=equation+'5';

    notifyListeners();
  }

  void keySixFunction() {
    equation=equation+'6';

    notifyListeners();
  }

  void keySevenFunction() {
    equation=equation+'7';

    notifyListeners();
  }

  void keyEightFunction() {
    equation=equation+'8';

    notifyListeners();
  }

  void keyNineFunction() {
    equation=equation+'9';

    notifyListeners();
  }

  void keyPlusFunction() {
    equation=equation+'+';

    notifyListeners();
  }

  void keyMinusFunction() {
    equation=equation+'-';

    notifyListeners();
  }

  void keyMultipleFunction() {
    equation=equation+'x';

    notifyListeners();
  }

  void keyDivideFunction() {
    equation=equation+'/';

    notifyListeners();
  }

  void keyPercentageFunction() {
    equation=equation+'%';

    notifyListeners();
  }

  void keyCommaFunction() {
    equation=equation+',';

    notifyListeners();
  }

  void keyEqualFunction() {


    notifyListeners();
  }
}