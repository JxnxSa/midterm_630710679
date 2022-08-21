import 'dart:io';


class Converter{
  double F = 0;
  double C = 0;
  double K = 0;
  double converterTem(double num){
    stdout.write('แปลงเป็หน่วยไร : ');
    var str = stdin.readLineSync();
    if(str == 'Celsius to Fahrenheit'){
      F = num * (9 / 5) + 32;
      print('$num Celsius = $F Fahrenheit');
      F=0;
      return 1;
    }else if(str == 'Celsius to Kelvin'){
      K = num + 273.15;
      print('$num Celsius = $K Kelvin');
      K = 0;
      return 2;
    }else if (str == 'Fahrenheit to Celsius'){
      C= (num - 32) * 5 / 9;
      print('$num Fahrenheit = $C Celsius');
      C = 0;
      return 3;
    }else if (str == 'Fahrenheit to Kelvin'){
      K = (num - 32) * 5 / 9 + 273.15;
      print('$num Fahrenheit = $K Kelvin');
      K = 0;
      return 4;
    }else if(str == 'Kelvin to Celsius'){
      C = num - 273.15;
      print('$num Kelvin = $C Celsius');
      C = 0;
      return 5;
    }else if(str == 'Kelvin to Fahrenheit'){
      F = (num - 273.15) * 9 / 5 + 32;
      print('$num Kelvin = $F Fahrenheit');
      F = 0;
      return 6;
    }
    return 1;
  }
}