import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Ara extends ConsumerWidget{
  Ara({Key? key}) : super(key: key);
  List<String> _ilSecenekleri= [      'Adana',      'Adıyaman',      'Afyonkarahisar',      'Ağrı',      'Amasya',      'Ankara',      'Antalya',      'Artvin',      'Aydın',      'Balıkesir',      'Bilecik',      'Bingöl',      'Bitlis',      'Bolu',      'Burdur',      'Bursa',      'Çanakkale',      'Çankırı',      'Çorum',      'Denizli',      'Diyarbakır',      'Edirne',      'Elazığ',      'Erzincan',      'Erzurum',      'Eskişehir',      'Gaziantep',      'Giresun',      'Gümüşhane',      'Hakkari',      'Hatay',      'Isparta',      'Mersin',      'İstanbul',      'İzmir',      'Kars',      'Kastamonu',      'Kayseri',      'Kırklareli',      'Kırşehir',      'Kocaeli',      'Konya',      'Kütahya',      'Malatya',      'Manisa',      'Kahramanmaraş',      'Mardin',      'Muğla',      'Muş',      'Nevşehir',      'Niğde',      'Ordu',      'Rize',      'Sakarya',      'Samsun',      'Siirt',      'Sinop',      'Sivas',      'Tekirdağ',      'Tokat',      'Trabzon',      'Tunceli',      'Şanlıurfa',      'Uşak',      'Van',      'Yozgat',      'Zonguldak',      'Aksaray',      'Bayburt',      'Karaman',      'Kırıkkale',      'Batman',      'Şırnak',      'Bartın',      'Ardahan',      'Iğdır',      'Yalova',      'Karabük',      'Kilis',      'Osmaniye',      'Düzce'    ];

  @override
  Widget build(BuildContext context, WidgetRef ref){
    return Scaffold(
         appBar: AppBar(
            title: Text('Bitıklabilet'),
            backgroundColor: Colors.red,
            centerTitle: true,
         ),
           body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Seyahat Uygulamasına Hoşgeldiniz',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 150),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButton<String>(
                          hint: Text('Nereden '),
                          items: _ilSecenekleri.map((il) {
                            return DropdownMenuItem<String>(
                              value: il,
                              child: Text(il),
                            );
                          }).toList(),
                          onChanged: (value) {},
    ),
                        DropdownButton<String>(
                          hint: Text('Nereye '),
                          items: _ilSecenekleri.map((il) {
                            return DropdownMenuItem<String>(
                              value: il,
                              child: Text(il),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Seyahat Tarihi'),
                        ),
                      ],
                    ),
                   SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Otobüs Bileti Bul'),
                        ),
                      ],
                    ),
                   SizedBox(height: 200),
                  ],
                ),
           ),
    );
  }
}
