import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ArithmeticBlocView extends StatelessWidget {
  ArithmeticBlocView({super.key});

  final formKey = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  int first = 0;
  int second = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("arithmetic cubit"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: firstController,
              decoration: const InputDecoration(
                labelText: 'First number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter first number';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: secondController,
              decoration: const InputDecoration(
                labelText: 'Second Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter second number';
                }
                return null;
              },
            ),
            BlocBuilder<ArithmeticCubit, int>(
              builder: (context, state) {
                return Text(
                  "Result: $state",
                  style: const TextStyle(
                      fontSize: 48, fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  first = int.parse(firstController.text);
                  second = int.parse(secondController.text);
                  print(first);
                  print(second);

                  context
                      .read<ArithmeticBloc>()
                      .add(MultiplyEvent(first, second));
                }
              },
              child: Text("Multiply"),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  first = int.parse(firstController.text);
                  second = int.parse(secondController.text);

                  context
                      .read<ArithmeticBloc>()
                      .add(IncrementEvent(first, second));
                }
              },
              child: Text("Add"),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  first = int.parse(firstController.text);
                  second = int.parse(secondController.text);
                  context
                      .read<ArithmeticBloc>()
                      .add(DecrementEvent(first, second));
                }
              },
              child: Text("Subtract"),
            ),
          ],
        ),
      )),
    );
  }
}
