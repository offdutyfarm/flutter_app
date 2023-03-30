
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterwave/flutterwave.dart'; 

// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(MaterialApp(
    home: MyApp() ,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(appBar: AppBar(
      title: const Text('Off Duty Farm '),
        ),
        body: Center(
              child: Container(
                    child: Column(          
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Rent Land for Cattle Rearing"),
    Image.asset('assets/images/cattle_no_background.jpeg'),
    ElevatedButton(
    style: ElevatedButton.styleFrom(
    primary: Colors.blue, // background
    onPrimary: Colors.white, // foreground
                  ),
      onPressed: () { 
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InvestmentOptions()) ); },
      child: Text('Get Started'),
    )
    // Image.asset('images/pic2.jpg'),
    // Image.asset('images/pic3.jpg'),
  ],
)
        ),
        ),
      ),


    );
  }
}

//Page 2 
class InvestmentOptions extends StatelessWidget {
  const InvestmentOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text('Investment Options'),
      ),
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Text("Investment Options"),
                Text("Raise a cow with someone else"),
                Image.asset('assets/images/two_people.png'),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                                  ),
                      onPressed: () { 
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const PaymentOptions()) ); 
                              },
                      child: Text('Order '),
                    ),
                Text("Raise a Cow alone"),
                Image.asset('assets/images/one_person.png'),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                                  ),
                      onPressed: () { 
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PaymentOptions()) ); 
                        },
                      child: Text('Order '),
                    ),
                

            ]
        ),
    
      ),
    ),
    );
  }
}

// Page 3 
// Payment Options
class PaymentOptions extends StatelessWidget{
  const PaymentOptions({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: const Text('Payment Options'),
      ),
      body:Center(
          child:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Text("INSTALLMENTS"),
              Text("COST PRICE  UGX 700,000"),
              Text("INSTALLMENT AMOUNT  UGX 233333"),
              Text("PAYMENT PLAN  3 MONTHS"),
              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                                  ),
                      onPressed: () { 
                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AccountOptions()) ); 
                        },
                      child: Text('PAY'),                    
                    ),   
              Text("FULL PAYMENT"),
              Text("COST PRICE  UGX 700,000"),
              Text("PROFIT UGX 800000"),
              Text("TIME  12 MONTHS "),
              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                                  ),
                      onPressed: () { 
                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AccountOptions()) ); 
                        },
                      child: Text('PAY'),                    
                    ), 
            ]),
          )
      ),
    );
  }
}



class AccountOptions extends StatelessWidget{
  const AccountOptions({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("First Name"),
              TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your first name',
                        ),
                      ),
              Text("Last Name"),
              TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your last name',
                        ),
                      ),
              Text("Phone Number"),
              TextField(
                // controller: mycontroller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                 
                  hintText: '070X XXX XXX',
                ),
              ),

              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                                  ),
                      onPressed: () { 
                      
                                
                        },
                      child: Text('SUBMIT'),                    
                    ),  
            ],
          ),
        ),
      ),
    );
  }

}