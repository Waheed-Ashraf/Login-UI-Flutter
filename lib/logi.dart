import 'package:flutter/material.dart';

class logi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var EmailAddressinfo = TextEditingController();
    // ignore: non_constant_identifier_names
    var Passwordinfo = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        // title: const Text('waheed'),
        // actions: [
        //   IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        //   IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        //
        //   // Icon(Icons.notifications),
        //   //  IconButton(onPressed: (){}, icon: Icons(Icons.search))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: EmailAddressinfo,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: Passwordinfo,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    print(EmailAddressinfo.text);
                    print(Passwordinfo.text);
                  },
                  child: const Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      )),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              // Container(
              //   width: double.infinity,
              //   color: Colors.blue,
              //   child: MaterialButton(
              //     onPressed: () {
              //
              //     },
              //     child: const Text('Register',
              //         style: TextStyle(
              //           color: Colors.white,
              //         )),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account ? '),
                  TextButton(onPressed: () {}, child: const Text('Register Now'))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
