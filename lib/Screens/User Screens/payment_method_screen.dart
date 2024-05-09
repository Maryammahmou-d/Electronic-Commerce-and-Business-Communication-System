import 'package:authentication/Screens/User%20Screens/payment_success_screen.dart';
import 'package:authentication/Screens/User%20Screens/user_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentMethod extends StatelessWidget {
  var Cardcontroller = TextEditingController();
  var CardHoldercontroller = TextEditingController();


  get defaultPadding => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading:IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const CartScreen(navBarIndex: 3,)));
          }, icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),),
        title: const Text(
          'Payment Method',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select your payment method' ,
                style: TextStyle(fontWeight: FontWeight.w400 ,
                    fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child:
                Row(
                  children: [
                    Image.asset('lib/assets/pay_fav/VISA.png'),
                    const Spacer(),
                    Image.asset('lib/assets/pay_fav/Mastercard.png'),
                    const Spacer(),
                    Image.asset('lib/assets/pay_fav/PayPall.png'),
                  ],
                ),

              ),
              Center(
                child: Image.asset('lib/assets/pay_fav/Card.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: Cardcontroller,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly ,
                    LengthLimitingTextInputFormatter(19),
                    CardNumberInputFormatter()
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Card Number ',
                    prefixIcon: Icon(Icons.add_card),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child:
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4),
                          CardMonthInputFormatter()
                        ],
                        decoration: const InputDecoration(
                          labelText: "Exp Date " ,
                          prefixIcon: Icon(Icons.calendar_month),
                          border: OutlineInputBorder(),

                        ),
                      ),
                    ),
                    const SizedBox(width:20),
                    Expanded(
                      child:
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(3)
                        ],
                        decoration: const InputDecoration(
                          labelText: "CVV" ,
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),

                        ),
                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: CardHoldercontroller,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  keyboardType: TextInputType.name,
                  inputFormatters: [

                    LengthLimitingTextInputFormatter(30),
                    CardNumberInputFormatter()
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Card Holder ',
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.money , color: Colors.green) ,
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text ('Or Pay Cash' ,
                        style: TextStyle(fontWeight: FontWeight.bold ,
                            fontSize: 16),),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_sharp ,
                        size: 18 ,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text('Order Summary ' , style: TextStyle(
                        fontWeight: FontWeight.bold ,
                        fontSize: 19
                    ),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.keyboard_arrow_down ,
                        size: 30 ,) ,

                    )
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .99,
                    height:MediaQuery.of(context).size.width * .29,
                    decoration:
                    BoxDecoration(
                      color: const Color.fromRGBO(13, 10, 53, 1),
                      borderRadius: BorderRadius.circular(20),

                    ),


                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(18),
                            child:
                            Text('Have a Promo Code ?' ,
                              style: TextStyle(color: Colors.white),

                            ),



                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .40,
                            height:MediaQuery.of(context).size.width * .05,
                            decoration:
                            const BoxDecoration(
                              color: Colors.white,

                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children:  [
                          Padding(
                            padding: EdgeInsets.all(18),
                            child:
                            Text('Total' ,
                              style: TextStyle(color: Colors.white ,
                                  fontWeight: FontWeight.bold ,
                                  fontSize: 15),

                            ),




                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.all(18),
                            child:
                            Text('5000 EGP' ,
                              style: TextStyle(color: Colors.white ,
                                  fontWeight: FontWeight.w500 ,
                                  fontSize: 15),

                            ),




                          ),
                        ],
                      ),
                    ],
                  ),




                ],

              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .90,
                  height: MediaQuery.of(context).size.width * .13 ,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                               PaymentSuccessScreen()));
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 198, 50, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
//for card number
class CardNumberInputFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue)
  {
    if(newValue.selection.baseOffset == 0)
    {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for(var i = 0 ; i <inputData.length ; i++)
    {
      buffer.write(inputData[i]);
      int index = i+1;

      if(index % 4 == 0 && inputData.length != index)
      {
        buffer.write(" ");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length)
    );


  }

}

class CardMonthInputFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue)
  {
    var newText = newValue.text;

    if(newValue.selection.baseOffset == 0)
    {
      return newValue;
    }
    var buffer = StringBuffer();

    for(var i = 0 ; i <newText.length ; i++)
    {
      buffer.write(newText[i]);
      int nonZeroIndex = i+1;

      if(nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length)
      {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length)
    );


  }

}


