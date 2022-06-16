import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:conversor_de_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  HomeView(){
    homeController = HomeController(toText:toText, fromText:fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(top: 100, right: 30, left: 30),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 150, height: 150),
              SizedBox(height: 70),
              CurrencyBox(),
              SizedBox(height: 20),
              CurrencyBox(),
              SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {},
                child: Text('Converter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
