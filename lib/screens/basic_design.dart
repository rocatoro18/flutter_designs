import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        const Title(),
        const ButtonSection(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: const Text(
            'Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, "consecteur", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín',
            style: TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.justify,
          ),
        )
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomButton(name: 'Call', icon: Icons.phone),
        CustomButton(name: 'Route', icon: Icons.rocket),
        CustomButton(name: 'Share', icon: Icons.share),
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.name, required this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35,
        ),
        Text(name,
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Alguna parte del mundo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'California, USA',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('18')
        ],
      ),
    );
  }
}
