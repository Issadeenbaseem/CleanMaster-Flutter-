import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Razorpay _razorpay;
  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _razorpay = new Razorpay();

    TextEditingController textEditingController = new TextEditingController();

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerERRORFailure);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _razorpay.clear();
  }

  void openCheckout() {
    var option = {
      "key": "rzp_test_GlxG8BKVyjTRNR",
      "amount": textEditingController.text,
      "name": "Boc Payment App ",
      "description": "Payment for  the random product SE:Baseem_Issadeen",
      "prefill": {
        "contact": "0768860812",
        "email": "issadeenbaseem95@gmail.com"
      },
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      _razorpay.open(option);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess() {
    print("Payment Successfull");
  }

  void handlerERRORFailure() {
    print("Payment Error");
  }

  void handlerExternalWallet() {
    print(" ExternalWallet");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          "Payment methodes",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 50, 100, 0),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                    border: null,
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('asset/image/bs.png'))),
              ),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Online Payment",
                        style: TextStyle(fontSize: 22, color: Colors.red[300]),
                      ),
                    ),
                    SizedBox(height: 1),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(
                          "You Can Pay Through Just One Click",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[300]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          hintText: 'Enter Yor Amount',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        " Pay Now ",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        openCheckout();
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
