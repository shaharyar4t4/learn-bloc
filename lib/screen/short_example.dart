import 'package:learnblocflutter/linker/app_linker.dart';
import 'package:equatable/equatable.dart';
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

          // this current fnc show the hashcode which is totally different so that hash code is different.
          print(preson.hashCode.toString());
          print(preson1.hashCode.toString());
          /*the print fnc show the false value so it's means Dart 
        always same permeter but strill show the false because the dart not 
        consider the premeter value it consider only the object value*/
          print(preson == preson1);

          //the print fnc is show the true because the object is same on console this issue taken by using the Equaltable packages 
          // print(preson == preson);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// Equatable package is help to two different object name but the 
//inner premeter is same so in that situation but dart is consider 
//the same ? So Equatable Package is help to resolve this issue 
class Preson extends Equatable{
  final String name;
  final int age;

  Preson({required this.name, required this.age});
  
  @override
  // TODO: implement props
  List<Object?> get props => [name, age];
}
