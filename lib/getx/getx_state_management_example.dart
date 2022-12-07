import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class GetApp extends StatelessWidget {
  GetApp({super.key});

  // artık bu int tipinde değil
  // RxInt tipinde observable yani izlenebilir
  // olduğu için
  // int counter = 0.obs; => Hata
  RxInt counter = 0.obs;

  void arttir() {
    counter++;
  }

  void azalt() {
    counter--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const Text(
              'Hello',
            ),
            Obx(() => Text(
                  // değişkeni çağırıyorum
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,
                )),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // arttır metodunu çağırmış oldum
            onPressed: arttir,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            // arttır metodunu çağırmış oldum
            onPressed: azalt,
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
