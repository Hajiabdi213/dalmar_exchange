// lib/exchange_modal.dart

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

Future<dynamic> ExchangeModel(BuildContext context, String typeOfExchange,
    String prefixCode, String Adeega) {
  String amountToExchange = '';
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.white,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "$typeOfExchange",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "$Adeega",
                      style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          amountToExchange = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.05,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Fadlan Geli Lacagta',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.034,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Adeega == 'ZAAD'
                              ? Color(0xff66BB66)
                              : Color(0xffffe13e),
                          padding: EdgeInsets.all(10),
                        ),
                        child: Text(
                          "Sarrifo / Exchange",
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: MediaQuery.sizeOf(context).width * 0.06,
                            fontWeight: FontWeight.w500,
                            color:
                                Adeega == 'ZAAD' ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          FlutterPhoneDirectCaller.callNumber(
                              '$prefixCode${amountToExchange.replaceAll('.', '*')}#');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
