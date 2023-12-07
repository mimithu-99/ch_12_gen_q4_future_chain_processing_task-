/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:async';

export 'src/dart_ch_12_gen_q4_chain_processing_task_base.dart';

// TODO: Export any libraries intended for clients of this package.
Future<List<int>> processInChain(List<int> inputNumber) async {
  List<int> outputNumber1 = [];
  for (int item in inputNumber) {
    int newNumber = await processNumberAsync(item);
    outputNumber1.add(newNumber);
  }
  return Future.value(outputNumber1);
}

Future<int> processNumberAsync(int newNumber) async {
  return await Future.delayed(Duration(seconds: 3), () => newNumber * 2);
}


