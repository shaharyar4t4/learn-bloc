import 'package:learnblocflutter/linker/app_linker.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Counter Screen")),
      body: Column(
        children: [
          Text("0"),
          SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("increases")),
              SizedBox(width: 30),
              ElevatedButton(onPressed: () {}, child: Text("decreases")),
            ],
          ),
        ],
      ),
    );
  }
}
