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
    //Eğer işlem operatörü varsa sondan 3 karakter silinecek
    if (equation[equation.length-1]==' ') {
      equation=equation.substring(0,equation.length-3);
    } else {
      equation=equation.substring(0,equation.length-1);
    }


    //conclusion='';

    notifyListeners();
  }

  void keyZeroFunction() {
    equation='${equation}0';

    notifyListeners();
  }

  void keyOneFunction() {
    equation='${equation}1';

    notifyListeners();
  }

  void keyTwoFunction() {
    equation='${equation}2';

    notifyListeners();
  }

  void keyThreeFunction() {
    equation='${equation}3';

    notifyListeners();
  }

  void keyFourFunction() {
    equation='${equation}4';

    notifyListeners();
  }

  void keyFiveFunction() {
    equation='${equation}5';

    notifyListeners();
  }

  void keySixFunction() {
    equation='${equation}6';

    notifyListeners();
  }

  void keySevenFunction() {
    equation='${equation}7';

    notifyListeners();
  }

  void keyEightFunction() {
    equation='${equation}8';

    notifyListeners();
  }

  void keyNineFunction() {
    equation='${equation}9';

    notifyListeners();
  }

  void keyPlusFunction() {
    if (equation.length>1){
      if (equation[equation.length-2]=='-' || equation[equation.length-2]=='/' || equation[equation.length-2]=='x' || equation[equation.length-2]=='%'){
        equation="${equation.substring(0,equation.length-2)}+ ";
      } else if (equation[equation.length-2]=='+') {
        equation=equation;
      }
      else {
        equation='$equation + ';
      }
    } else {
      equation='$equation + ';
    }

    notifyListeners();
  }

  void keyMinusFunction() {
    if (equation.length>1){
      if (equation[equation.length-2]=='+' || equation[equation.length-2]=='/' || equation[equation.length-2]=='x' || equation[equation.length-2]=='%'){
        equation="${equation.substring(0,equation.length-2)}- ";
      } else if (equation[equation.length-2]=='-') {
        equation=equation;
      }
      else {
        equation='$equation - ';
      }
    } else {
      equation='$equation - ';
    }

    notifyListeners();
  }

  void keyMultipleFunction() {
    if (equation.length>1){
      if (equation[equation.length-2]=='-' || equation[equation.length-2]=='/' || equation[equation.length-2]=='+' || equation[equation.length-2]=='%'){
        equation="${equation.substring(0,equation.length-2)}x ";
      } else if (equation[equation.length-2]=='x') {
        equation=equation;
      }
      else {
        equation='$equation x ';
      }
    } else {
      equation='$equation x ';
    }

    notifyListeners();
  }

  void keyDivideFunction() {
    if (equation.length>1){
      if (equation[equation.length-2]=='-' || equation[equation.length-2]=='+' || equation[equation.length-2]=='x' || equation[equation.length-2]=='%'){
        equation="${equation.substring(0,equation.length-2)}/ ";
      } else if (equation[equation.length-2]=='/') {
        equation=equation;
      }
      else {
        equation='$equation / ';
      }
    } else {
      equation='$equation / ';
    }

    notifyListeners();
  }

  void keyPercentageFunction() {
    if (equation.length>1){
      if (equation[equation.length-2]=='-' || equation[equation.length-2]=='/' || equation[equation.length-2]=='x' || equation[equation.length-2]=='+'){
        equation="${equation.substring(0,equation.length-2)}+ ";
      } else if (equation[equation.length-2]=='%') {
        equation=equation;
      }
      else {
        equation='$equation % ';
      }
    } else if (equation.length==1) {
      equation='$equation % ';
    }

    notifyListeners();
  }

  void keyCommaFunction() {
    //denklemin içinde virgül varsa bir daha ekleme
    if (equation.contains(',')) {
      equation=equation;
    } else {
      equation='$equation,';
    }

    notifyListeners();
  }

  List<String> operations(List<String> number, String operation){

    var firstOperation=[];

    //Dizinin elemanlarını boşluklardan temizliyoruz
    for(int i=0;i<number.length;i++){
      number[i]=number[i].trim();
    }

    String middleVariable='';

    for (int i=0;i<number.length;i++){
      if(number[i]==operation) {
        firstOperation.add(number[i-1]);
        firstOperation.add(number[i+1]);

        if (operation=='x') {
          //Bölme operatörü çarpmadan önce ise soldan sağa doğru işlem yapılacak
          if (number.length>5){
            if (number[i-2]=='/'){
              middleVariable = (double.parse(number[i-3]) / double.parse(number[i-1])).toString();

              number[i-3]=middleVariable;

              number.removeAt(i-2);

              number.removeAt(i-2);

              middleVariable=(double.parse(number[i-3])*double.parse(number[i-1])).toString();

              number[i-3]=middleVariable;

              number.removeAt(i-2);

              number.removeAt(i-2);


              i=0;

              conclusion=middleVariable;

              firstOperation=[];

              break;

            }
          }

          middleVariable = (double.parse(firstOperation[0]) * double.parse(firstOperation[1])).toString();

        } else if (operation=='/') {
          middleVariable = (double.parse(firstOperation[0]) / double.parse(firstOperation[1])).toString();
        } else if (operation=='+') {
          middleVariable=(double.parse(firstOperation[0])+double.parse(firstOperation[1])).toString();
        } else if (operation=='-') {
          middleVariable=(double.parse(firstOperation[0])-double.parse(firstOperation[1])).toString();
        }

        number[i-1]=middleVariable;

        number.removeAt(i);

        number.removeAt(i);

        //dizinin elemanları silindikçe indisler kayıyor. O yüzden i=0 alıp döngüyü baştan başlatıyoruz
        i=0;

        conclusion=middleVariable;

        firstOperation=[];
      }
    }

    return number;

  }

  List<String> percentageOperations(List<String> number){

    //var firstOperation=[];

    //Dizinin elemanlarını boşluklardan temizliyoruz
    for(int i=0;i<number.length;i++){
      number[i]=number[i].trim();
    }

    String middleVariable='';

    for (int i=0;i<number.length;i++){
      if(number[i]=="%") {
        //firstOperation.add(number[i-1]);
        //firstOperation.add(number[i+1]);

        if (number[number.length-1]!=" "){
          if(number.length>4 && number[number.length-4]=="x") {
            //debugPrint(number[i-3]);
            double a=(double.parse(number[i-3])*double.parse(number[i-1]))/100;
            middleVariable=a.toString();

            number[i-3]=middleVariable;

            number.removeAt(i-2);
            number.removeAt(i-2);
            number.removeAt(i-2);

          } else if(number.length>4 && number[number.length-4]=="+") {
            //debugPrint(number[i-3]);
            double a=(double.parse(number[i-3])*double.parse(number[i-1]))/100;
            middleVariable=(double.parse(number[i-3])+a).toString();

            number[i-3]=middleVariable;

            number.removeAt(i-2);
            number.removeAt(i-2);
            number.removeAt(i-2);

          }else if(number.length>4 && number[number.length-4]=="-") {
            //debugPrint(number[i-3]);
            double a=(double.parse(number[i-3])*double.parse(number[i-1]))/100;
            middleVariable=(double.parse(number[i-3])-a).toString();

            number[i-3]=middleVariable;

            number.removeAt(i-2);
            number.removeAt(i-2);
            number.removeAt(i-2);

          }else if(number.length>4 && number[number.length-4]=="/") {
            //debugPrint(number[i-3]);
            double a=double.parse(number[i-1])/100;
            debugPrint(a.toString());
            double b=double.parse(number[i-3])/a;
            debugPrint(b.toString());
            middleVariable=b.toString();

            number[i-3]=middleVariable;

            number.removeAt(i-2);
            number.removeAt(i-2);
            number.removeAt(i-2);

          } else {
            middleVariable = (double.parse(number[i-1]) / 100).toString();
          }
        }

        //dizinin elemanları silindikçe indisler kayıyor. O yüzden i=0 alıp döngüyü baştan başlatıyoruz
        i=0;

        conclusion=middleVariable;

      }
    }

    return number;

  }

  void keyEqualFunction() {

    bool isError=false;

    List<String> number=[];
    number.addAll(equation.split(' '));

    //Sıfıra bölme kontrolü yapılıyor
    if (number.length>2) {
      for (int i = 0; i < number.length; i++) {
        if (number[i] == "/") {
          if (number[i + 1] == "0") {
            conclusion = "Sıfıra bölme var";
            isError = true;
          }
        }
      }
    }

    if (isError==false) {

      if (number.length>=2){
        // % den sonra sayı olmasa da olur
        number = percentageOperations(number);
      }

      if (number.length>2 && number[number.length-1]!=""){
        // En az 2 sayı ve 1 operatör olmalı
        number = operations(number, 'x');
        number = operations(number, '/');
        number = operations(number, '+');
        number = operations(number, '-');
      }

    }

    notifyListeners();
  }
}