import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InterestCubitView extends StatelessWidget {
  InterestCubitView({super.key});

  final formKey = GlobalKey<FormState>();
  final princileController = TextEditingController();
  final timeController = TextEditingController();
  final rateController = TextEditingController();

  double principle = 0;
  double time = 0;
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("arithmetic cubit"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
            child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: princileController,
                decoration: const InputDecoration(
                  labelText: 'Principle',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter princple';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: timeController,
                decoration: const InputDecoration(
                  labelText: 'time',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter time';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: rateController,
                decoration: const InputDecoration(
                  labelText: 'rate',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter rate';
                  }
                  return null;
                },
              ),
              BlocBuilder<SimpleInterestCubit, double>(
                builder: (context, state) {
                  return Text(
                    "Interest: $state",
                    style: const TextStyle(
                        fontSize: 48, fontWeight: FontWeight.bold),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    principle = double.parse(princileController.text);
                    time = double.parse(timeController.text);
                    rate = double.parse(rateController.text);

                    context
                        .read<SimpleInterestCubit>()
                        .calculateSI(principle, time, rate);
                  }

                  princileController.clear();
                  timeController.clear();
                  rateController.clear();
                },
                child: Text("Calculate SI"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
