import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 255, 79),
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
                  backgroundImage: AssetImage("img/ayang.png"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 380,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                           Text("\t\t\t\t Nama  : \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Risa Adelia" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Card(
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Text("\t\t\t\t Email : \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t risaadelia28@gmail.com" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                         SizedBox(height: 5,),
                    Card(
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Text("\t\t\t\t Phone : \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t 085770005811" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Card(
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Text("\t\t\t\t Alamat : \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Karawang, Jawa Barat" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Card(
                      color: Color.fromARGB(255, 229, 144, 255),
                      child: Container(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Simpan" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Card(
                      color: Color.fromARGB(255, 229, 144, 255),
                      child: Container(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ubah" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}