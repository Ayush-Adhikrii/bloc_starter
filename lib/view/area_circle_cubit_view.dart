import 'package:bloc_test/cubit/area_circe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCircleCubitView extends StatelessWidget {
  AreaCircleCubitView({super.key});

  final formKey = GlobalKey<FormState>();
  final radiusController = TextEditingController();

  double radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle cubit"),
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
                controller: radiusController,
                decoration: const InputDecoration(
                  labelText: 'Radius',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter radius';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              BlocBuilder<AreaCirceCubit, double>(
                builder: (context, state) {
                  return Text(
                    "Area: $state",
                    style: const TextStyle(
                        fontSize: 48, fontWeight: FontWeight.bold),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    radius = double.parse(radiusController.text);

                    context.read<AreaCirceCubit>().calculateArea(radius);
                    radiusController.clear();
                  }
                },
                child: Text("Calculate Area"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
