import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            child: FractionallySizedBox(
              widthFactor: .9,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          color: Colors.blue[100],
                          child: Icon(Icons.person, color: Colors.blue),
                        ),
                        Icon(Icons.search, color: Colors.cyan, size: 30),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey, Emma...😻",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          'How may I help you today?',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textIcon(texto: 'Nutrition', icono: Icon(Icons.pets), colorIcon: Colors.purple, backgroundColorIcon: Colors.purple[50]!),
                        textIcon(texto: 'Reminders', icono: Icon(Icons.notifications), colorIcon: Colors.indigo, backgroundColorIcon: Colors.indigo[50]!),
                        textIcon(texto: 'Training', icono: Icon(Icons.school), colorIcon: Colors.blue, backgroundColorIcon: Colors.blue[50]!),
                        textIcon(texto: 'Pet Friendly', icono: Icon(Icons.location_on), colorIcon: Colors.deepPurple, backgroundColorIcon: Colors.deepPurple[50]!),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your pets',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
                        ),
                        Row(
                          children: [
                            Text('Add ', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold)),
                            Icon(Icons.add, color: Colors.cyan),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        petPhotos(text: 'Jake', colorText: Colors.cyan),
                        petPhotos(text: 'Waffle', colorText: Colors.orange),
                        petPhotos(text: 'Shadow', colorText: Colors.purple),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming appointments',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('View all ', style: TextStyle(color: Colors.cyan)),
                            Icon(Icons.arrow_forward_ios, size: 14, color: Colors.cyan),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: petInfo(
                      textTitle: 'Parasite Control',
                      textDescription: 'DR. HAZEL CHAPMAN',
                      date: '17.11.2022',
                      petName: 'Waffle',
                      colorTag: Colors.orange[100]!,
                      colorTextTag: Colors.orange,
                      icon: Icon(Icons.bug_report),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: petInfo(
                      textTitle: 'Dental Care',
                      textDescription: 'DR. ANNA BARTON',
                      date: '28.11.2022',
                      petName: 'Jake',
                      colorTag: Colors.cyan[100]!,
                      colorTextTag: Colors.cyan,
                      icon: Icon(Icons.health_and_safety),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: petInfo(
                      textTitle: 'FeLV Vaccination',
                      textDescription: 'DR. HAZEL CHAPMAN',
                      date: '6.12.2022',
                      petName: 'Shadow',
                      colorTag: Colors.purple[100]!,
                      colorTextTag: Colors.purple,
                      icon: Icon(Icons.vaccines),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget textIcon({
  String texto = '',
  Icon icono = const Icon(Icons.handshake),
  Color colorIcon = Colors.green,
  Color backgroundColorIcon = Colors.red,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 55,
        height: 55,
        color: backgroundColorIcon,
        child: Icon(icono.icon, color: colorIcon, size: 28),
      ),
      SizedBox(height: 4),
      Text(
        texto,
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget petPhotos({
  String image = 'assets/images/canva-golden-retriever-dog.webp',
  String text = '',
  Color colorText = Colors.black,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 85,
        height: 85,
        color: Colors.grey[200],
        child: Image.asset(image, fit: BoxFit.cover),
      ),
      SizedBox(height: 5),
      Text(
        text,
        style: TextStyle(color: colorText, fontWeight: FontWeight.bold, fontSize: 14),
      ),
    ],
  );
}

Widget petInfo({
  String textTitle = 'TITULO',
  String textDescription = 'descripcion',
  String date = 'fecha',
  String petName = 'Nombre',
  Icon icon = const Icon(Icons.pets),
  Color colorTag = Colors.grey,
  Color colorTextTag = Colors.black,
}) {
  return Row(
    children: [
      Container(
        width: 45,
        height: 45,
        color: Colors.blue[50],
        child: Icon(icon.icon, color: Colors.blue, size: 24),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            Text(textDescription, style: TextStyle(color: Colors.grey, fontSize: 11)),
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(date, style: TextStyle(color: Colors.grey, fontSize: 11)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            color: colorTag,
            child: Text(
              petName,
              style: TextStyle(color: colorTextTag, fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ],
  );
}
