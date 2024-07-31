import 'package:dalmar_exchange/call_dialog.dart';
import 'package:dalmar_exchange/exchange_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          shadowColor: Colors.grey,
          title: Text(
            "Dalmar Exchange",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'Algerian',
            ),
          ),
          backgroundColor: Color(0xff66BB66),
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.question_mark_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
            // top: MediaQuery.of(context).size.width * 0.03
          ),
          decoration: BoxDecoration(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03,
                  top: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.width * 0.02,
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(139, 255, 217, 0).withOpacity(1),
                        Color.fromARGB(138, 248, 243, 211).withOpacity(1),
                      ],
                      stops: [0.01, 10],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      transform: GradientRotation(0.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 60,
                          child: Image(
                            image: AssetImage('assets/edahab_logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 60,
                          child: Image(
                            image: AssetImage('assets/somtel_logo.png'),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            ExchangeModel(context, 'Dollar To Shilling',
                                '*109*659106603*', 'EDAHAB');
                          },
                          child: Container(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'SARRIFO DOLLAR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.038,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -40,
                                  left: 10,
                                  child: Image.asset(
                                    'assets/dollar.png', // Replace with your image URL
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ExchangeModel(
                              context,
                              'Shilling To Dollar',
                              '*119*659106603*',
                              'EDAHAB',
                            );
                          },
                          child: Container(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'SARRIFO SHILLING',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.038,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -40,
                                  left: 10,
                                  child: Image.asset(
                                    'assets/somsh.png', // Replace with your image URL
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              // ZAAD starts here
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03,
                  top: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.width * 0.02,
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff66BB66).withOpacity(1),
                        Color.fromARGB(255, 229, 241, 229).withOpacity(1),
                      ],
                      stops: [0.01, 10],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      transform: GradientRotation(0.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          child: Image(
                            image: AssetImage('assets/zaad_logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 60,
                          child: Image(
                            image: AssetImage('assets/telesom_logo.png'),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            ExchangeModel(context, 'Dollar To Shilling',
                                '*377*364189*', 'ZAAD');
                          },
                          child: Container(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 1,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'SARRIFO DOLLAR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.038,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -40,
                                  left: 10,
                                  child: Image.asset(
                                    'assets/dollar.png', // Replace with your image URL
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ExchangeModel(
                              context,
                              'Shilling To Dollar',
                              '*277*364189*',
                              'ZAAD',
                            );
                          },
                          child: Container(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 1,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'SARRIFO SHILLING',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.038,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -40,
                                  left: 10,
                                  child: Image.asset(
                                    'assets/somsh.png', // Replace with your image URL
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage('assets/exchange_icon.png'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Si fudud ugu sarrifo",
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 18,
                            )),
                        Text("Lacagtaada App-kan.",
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 18,
                            )),
                        Text("Mahadsanid",
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 18,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xff66BB66),
          onPressed: () {
            ContactDialogModal(context);
          },
          label: Icon(
            Icons.phone,
            color: Colors.white,
          ),
        ));
  }
}
