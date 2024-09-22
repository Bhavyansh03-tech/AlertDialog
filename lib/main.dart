import 'package:flutter/material.dart';

void main() {
  runApp(const AlertBox());
}

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  _showAlertDialog();
                },
                child: const Text("Show Alert Box"))
          ],
        )
      )
    );
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            content: const Text("Alert"),
            title: const Text("This is a alert"),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text("Close")
              )
            ],
          );
        }
    );
  }
}
