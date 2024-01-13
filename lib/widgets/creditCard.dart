import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  String cardNumber = '';
  String cardHolderName = '';
  String cvvNumber = '';
  String expiryDate = '';
  String bankName = '';
  var cardType = null;
  bool showBackView = false;
  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvNumber = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  void _onValidate() {
    if (formKey.currentState?.validate() ?? false) {
      print('valid!');
      print(cardNumber);
      print(cardType);
      Navigator.pop(context,
          {'cardNo': cardNumber, 'expiryDate': expiryDate, 'cvv': cvvNumber});
    } else {
      print('invalid!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(
        //   height: 10,
        // ),
        CreditCardWidget(
          // backgroundImage: 'assets/Rectangle.png',
          cardType: cardType,
          cardBgColor: Colors.black,
          bankName: bankName,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvNumber,
          showBackView: false,
          onCreditCardWidgetChange: (CreditCardBrand brand) {
            return cardType;
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Card Details'),
        ),
        CreditCardForm(
          formKey: formKey,
          obscureCvv: true,
          obscureNumber: true,
          cardNumber: cardNumber,
          cvvCode: cvvNumber,
          isHolderNameVisible: true,
          isCardNumberVisible: true,
          isExpiryDateVisible: true,
          cardHolderName: cardHolderName,
          expiryDate: expiryDate,
          inputConfiguration: const InputConfiguration(
            cardNumberDecoration: InputDecoration(
              labelText: 'Number',
              hintText: 'XXXX XXXX XXXX XXXX',
            ),
            expiryDateDecoration: InputDecoration(
              labelText: 'Expired Date',
              hintText: 'XX/XXXX',
            ),
            cvvCodeDecoration: InputDecoration(
              labelText: 'CVV',
              hintText: 'XXX',
            ),
            cardHolderDecoration: InputDecoration(
              labelText: 'Card Holder',
            ),
          ),
          onCreditCardModelChange: onCreditCardModelChange,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Cancle',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
            Container(
              // margin: const EdgeInsets.only(top: 10),
              // height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(237, 187, 171, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    // barrierColor: Colors.white,
                    context: context,
                    builder: (context) => AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      content: Builder(builder: (context) {
                        // width:
                        // MediaQuery.of(context).size.width * 0.7;
                        // height:
                        // MediaQuery.of(context).size.height * 0.4;
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/success-icon.png'),
                              Text(
                                'Success!',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'You have successfully your',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              Text(
                                'confirm payment send',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                // height:  height*0.1,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(237, 187, 171, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Continue Shopping',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  );
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
