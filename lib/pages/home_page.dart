import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:payment_test/controller/payment_controller.dart';
import 'package:payment_test/pages/paypal/makePayment.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

   PaymentController paymentController=Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
 
          Center(child: ElevatedButton(onPressed: (){
            print("Stripe");
            paymentController.makePayment(amount: '100', currency: 'US');
          }, child: Text("Stripe"))),
          
          SizedBox(height:20),

           Center(child: ElevatedButton(onPressed: (){
            Get.to(MakePayment());
          }, child: Text("paypal"))),


        ],
      ),
    );
    
  }
}