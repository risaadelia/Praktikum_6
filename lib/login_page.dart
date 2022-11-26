import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:praktikumenamaslab/profil_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if(_isBool == true){
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProfilPage(),));
        print("Berhasil Login");
        print(_isBool);
      }else{
        print("Silahkan Login Dahulu");
        print(_isBool);
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if(_isBool == true){
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProfilPage(),));
        print(_isBool);
        print("Berhasil");
      }else{
        print(_isBool);
        print("Gagal");
      }
    });
  }

  void initState(){
    super.initState();
    _getBool();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(221, 0, 255, 38),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(8.0),
                width: 200,
                height: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("img/NCTZEN.png"),
                ),
              ),
              const Text("NCTZEN STORE\n\n\n",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text("Hi NCTZEN\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              const Text("Klik tombol di bawah ini untuk melihat profilmu!!\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),             
              ElevatedButton(onPressed: _Boolean, child: const Text('Profilku')),
              
            ],
          ),
        ),
      ),
    );
  }
}