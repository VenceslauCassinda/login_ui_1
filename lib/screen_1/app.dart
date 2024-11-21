import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(600, 50),
                            bottomRight: Radius.elliptical(600, 50)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                            ),
                            Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                                width: 40,
                                child: Divider(
                                  color: Colors.white,
                                )),
                            TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Email',
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Palavra-passe',
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Esqueceu a senha?',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.white,
                        Color.fromARGB(255, 237, 237, 237),
                        Colors.white,
                      ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          const Text(
                            'ou entrar com',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black54, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(4),
                                child: Image.asset('lib/resources/google.png'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black54, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(4),
                                child:
                                    Image.asset('lib/resources/facebook.png'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black54, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(4),
                                child: Image.asset('lib/resources/twitter.png'),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Não tem uma conta?',
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'CADASTRE-SE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 180),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      height: 45,
                      width: 150,
                      child: const Center(
                          child: Text(
                        'CADASTRAR',
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 180),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                      height: 45,
                      width: 150,
                      child: const Center(
                          child: Text(
                        'ENTRAR',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
