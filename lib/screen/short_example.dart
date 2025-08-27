import 'package:learnblocflutter/linker/app_linker.dart';

class ShortExample extends StatefulWidget {
  const ShortExample({super.key});

  @override
  State<ShortExample> createState() => _ShortExampleState();
}

class _ShortExampleState extends State<ShortExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Small Example")),
      body: Column(children: [Container()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Preson preson = Preson(name: "Ali", age: 19);
          Preson preson1 = Preson(name: "Ali", age: 19);
          /*the print fnc show the false value so it's means Dart 
        always same permeter but strill show the false because the dart not 
        consider the premeter value it consider only the object value*/
          print(preson == preson1);

          //the print fnc is show the true because the object is same on console
          print(preson == preson);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Preson {
  final String name;
  final int age;

  Preson({required this.name, required this.age});
}
