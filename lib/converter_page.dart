import 'package:flutter/material.dart';
import 'package:midterm_630710679/converter.dart';

class ConverterPage extends StatefulWidget{
  @override
  State<ConverterPage> createState() => _PageState();
}

class _PageState extends State<ConverterPage> {
  final _controller = TextEditingController();
  final _c = Converter();

  // state variable
  var _feedbackText = '';
  var _showTestButton = false;
  // override
  void handleClick() {
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var tem = double.tryParse(_controller.text);
    if (tem == null) {
      // แจ้ง error
      print('Input Error!!!');
      setState(() {
        _feedbackText = 'Input Error!!!';
      });
    } else {
      var result = _c.converterTem(tem);
      if (result == 1.0) {
        setState(() {
          _feedbackText = '$tem Celsius = ${tem * (9 / 5) + 32} Fahrenheit';
        });
      } else if (result == 2.0) {
        setState(() {
          _feedbackText = '$tem Celsius = ${tem + 273.15} Kelvin';
        });
      }
      else if (result == 3.0) {
        setState(() {
          _feedbackText = '$tem Fahrenheit = ${(tem - 32) * 5 / 9} Celsius';
        });
      }
      else if (result == 4.0) {
        setState(() {
          _feedbackText = '$tem Fahrenheit = ${(tem - 32) * 5 / 9 + 273.15} Kelvin';
        });
      }
      else if (result == 5.0) {
        setState(() {
          _feedbackText = '$tem Kelvin = ${tem - 273.15} Celsius';
        });
      }
      else if (result == 6.0) {
        setState(() {
          _feedbackText = '$tem Kelvin = ${(tem - 273.15) * 9 / 5 + 32} Fahrenheit';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            // Callback function
            ElevatedButton(
              onPressed: handleClick,
              child: const Text('Celsius to Fahrenheit'),

            ),
            ElevatedButton(
              onPressed: handleClick,
              child: const Text('Celsius to Kelvin'),

            ),
            ElevatedButton(
              onPressed: handleClick,
              child: const Text('Fahrenheit to Celsius'),

            ),
            ElevatedButton(
              onPressed: handleClick,
              child: const Text('Fahrenheit to Kelvin'),

            ),
            ElevatedButton(
              onPressed: handleClick,
              child: const Text('Kelvin to Celsius'),


            ),
            ElevatedButton(
              onPressed: handleClick,
              child: const Text('Kelvin to Fahrenheit'),

            ),
            Text(_feedbackText),
          ],
        ),
      ),
    );
  }
}