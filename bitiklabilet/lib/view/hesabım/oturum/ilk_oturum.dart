

import 'package:bitiklabilet/view/hesab%C4%B1m/oturum/profil_bilgileri.dart';
import 'package:bitiklabilet/view/hesab%C4%B1m/sayfalar/dil_secimi.dart';
import 'package:bitiklabilet/view/hesab%C4%B1m/sayfalar/kampanyalar.dart';
import 'package:bitiklabilet/view/hesab%C4%B1m/sayfalar/para_birimi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'giris.dart';

class IlkOturum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 200),
              height: 300,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "bitıkla bilet dünyasına hoş geldiniz! Kampanyalar ve özel indirimlerden"
                        " faydalanmak için giriş yapın",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.none,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GirisSayfasi( )),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(top:10 ,bottom: 10,right: 40,left: 40),
                      ),
                    ),
                    child: Text("ÜYE GİRİŞİ YAPIN",
                      style: GoogleFonts.quicksand(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil( )),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.only(top:10 ,bottom: 10,right: 40,left: 40),
                ),
              ),
              child: Text("PROFİLİM",
                style: GoogleFonts.quicksand(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DilSecimi(   )),
                    );
                  },
                  label:const Text('Dil Seçimi',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  icon: Icon(Icons.language),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ParaBirimi(   )),
                    );
                  },
                  label:const Text('Para Birimi',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  icon: Icon(Icons.money),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Kampanyalar(   )),
                    );
                  },
                  label:const Text('Kampanyalar',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  icon: Icon(Icons.campaign),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}