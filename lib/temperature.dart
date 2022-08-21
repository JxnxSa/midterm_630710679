import 'dart:io';
import 'package:midterm_630710679/converter.dart';
void main(){
  double num = 0;
  do {
    stdout.write('Enter a temperature value to convert : ');
    var input =  stdin.readLineSync();
    var tem = double.tryParse(input!);
    var c = Converter();
    if(tem == null){
      print('Input error!!!');
      continue;
    }
    num = c.converterTem(tem);
  }while(num != 0);




}