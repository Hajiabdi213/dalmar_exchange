import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

Future<dynamic> ContactDialogModal(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.44,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.033,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).size.height * 0.04,
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(
            "Nagala Soo Xidhiidh",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'inter',
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          InkWell(
            onTap: () {
              FlutterPhoneDirectCaller.callNumber('0634675961');
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff66BB66).withOpacity(0.5),
                    Color(0xff66BB66),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/support_white.png'),
                ),
                title: Text(
                  "Telesom Number",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "06300000000",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.018,
          ),
          InkWell(
            onTap: () {
              FlutterPhoneDirectCaller.callNumber('0634675961');
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffffe13e).withOpacity(0.5),
                    Color(0xffffe13e),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/support.png'),
                ),
                title: Text(
                  "Telesom Number",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "06300000000",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
