import 'package:flutter/material.dart';
import 'package:mobx_example/mobx/counter/counter_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:mobx_example/mobx/movie_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // Orada değişikliklerini dinleyeceğimiz
  // değişkenleri ve metodları oluşturduk
  // Şimdi onları kullanmak için
  // o sınıfı çağırmamız gerekiyor

  var mob = MobxCounter();

  @override
  void initState() {
    mob.setup();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobx State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Burada dinlemek istediğim değişkeni hangi widgeta ekleyeceksem
            // o widgetı Observed() => widgetı ile sarıyorum
            // eğer Observed() => widgetı ilk olarak görünmüyorsa
            // o zaman flutter_mobx paketini eklememiz gerekiyor.
            // import 'package:flutter_mobx/flutter_mobx.dart';
            Observer(
              builder: (context) {
              return Text(
                '${mob.mesaj}',
              );
            }),
            Observer(builder: (_) {
              return Text(
                // değişkeni çağırıyorum
                '${mob.counter}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // arttır metodunu çağırmış oldum
            onPressed: mob.arttir,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            // arttır metodunu çağırmış oldum
            onPressed: mob.azalt,
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
