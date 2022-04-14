import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
class Mobilelogin extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mobilelogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          )),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Icon(Icons.view_stream_outlined),
                /* child: Image.asset('assets/sign-page-abstract-concept-illustration_335657-3875.jpg'),*/
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 80),
              ),
              Container(
                child: Text(
                  "Please enter your mobile Number to receive a verification code",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xffefefef),
                    border: Border.all(color: Colors.black12, width: 1.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   CountryCodePicker(
                     onChanged: print,
                     initialSelection: 'IN',
                     favorite: ['+91','IN'],
                     showCountryOnly: false,
                     showOnlyCountryWhenClosed: false,
                     alignLeft: false,
                   ),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                        ),

                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
