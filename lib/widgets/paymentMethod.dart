import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var globalKey = GlobalKey<FormState>();
  var check, email;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Form(
      key: globalKey,
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Name'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Middle Name/Initial'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Last Name'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Company'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Street Address'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('City'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Country'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('State/Province'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Zip/Postal Code'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                Text('Phone Number'),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    // margin: const EdgeInsets.only(top: 50),
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: const Text(
                            'Type Your Email...',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            check = true;

                            return 'Please enter the email';
                          }

                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            check = true;

                            return 'Please enter the valid email address';
                          }
                          check = false;

                          return null;
                        },
                        onSaved: (value) {
                          check = false;

                          email = value!;
                        },
                      ),
                    ),
                  ),
                ),
                CheckboxListTile(
                  value: isCheck,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                  title: Text('Subscribe for SMS'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: width,
                  decoration: BoxDecoration(
                    // color: Colors.deepOrange.shade100,
                    color: Color.fromRGBO(237, 187, 171, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton.small(
                        shape: CircleBorder(),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color.fromRGBO(237, 187, 171, 1),
                        ),
                      ),
                    ),
                    icon: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
