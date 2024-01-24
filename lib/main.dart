import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String apptitle = 'Ejercicio 2'; // Declaracion de un variable
    return MaterialApp(
      title: apptitle, // Uso de la variable
      home: Scaffold(
        appBar: AppBar(
          title: const Text(apptitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(name: "Panecillo", location: "Ciudad Quito"),
              TextSection(
                  description:
                      "Visitar El Panecillo y admirar lo hermoso de la ciudad de Quito desde las alturas es una experiencia que debes vivir en tu paseo por la ciudad. El Panecillo es una loma que divide a la ciudad entre norte y sur y en cuya cima está la representación de la única virgen alada, también conocida como la Virgen de Quito. Es una estructura gigante compuesta de 7 mil piezas de aluminio, réplica de la escultura del artista quiteño Bernardo de Legarda."),
              ImagenSection(image: "../lib/images/panecillo.jpg"),
              TextSection(description: ''),
              ButtonSection(),
              TitleSection(name: "Mitad del Mundo", location: "Ciudad Quito"),
              TextSection(
                  description:
                      "La Ciudad Mitad del Mundo es un complejo turístico y cultural propiedad de la prefectura de la provincia de Pichincha. Está situado en la parroquia de San Antonio del Distrito Metropolitano de Quito, al norte de la ciudad de Quito"),
              ImagenSection(image: "../lib/images/mitad.jpg"),
              TextSection(description: ''),
              ButtonSection(),
              TitleSection(name: "Cascadas", location: "Ciudad Quito"),
              TextSection(
                  description:
                      "Ailón del Diablo. Este atractivo turístico natural ubicado en la ciudad de Baños de Agua Santa, provincia de Tungurahua, es una de las cascadas más altas del Ecuador, con una altura de 80m y una profundidad de 20m."),
              ImagenSection(image: "../lib/images/cascadas.jpg"),
              TextSection(description: ''),
              ButtonSection(),
              TitleSection(name: "Molinuco", location: "Ciudad Quito"),
              TextSection(
                  description:
                      "En la ciudad de Quito, Provincia de Pichincha, a 15 Km. De la población de Sangolquí, el Refugio Ecológico Molinuco, se encuentra situado en la rivera oriental del Río Pita, es un paraje natural rodeado de montañas, bosques, cascadas, y vertientes, comprende 60 hectáreas de bosques de eucalipto, ciprés, pino, de los cuales 15 hectáreas corresponden a vegetación nativa y bosque primario."),
              ImagenSection(image: "../lib/images/molinuco.jpg"),
              TextSection(description: ''),
              ButtonSection(),
              TitleSection(
                  name: "Catedral Metropolitana de Quito",
                  location: "Ciudad Quito"),
              TextSection(
                  description:
                      "Bellisima Catedral, hay que pagar nuevamente para poder accesar y tambien para las cupulas Esteticamente es muy hermosa, sin embargo la orientacion es muy raro y no sigue la grilla modular de America Latina y se ingresa del lado.Tiene a Mariscal Sucre enterrado en su interior, este dato no lo sabia y lo ignoraba Es muy bella y vale la pena recorrerla y fotografiarla"),
              ImagenSection(image: "../lib/images/catedra.jpg"),
              TextSection(description: ''),
              ButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 2
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImagenSection extends StatelessWidget {
  const ImagenSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Color.fromARGB(255, 233, 220, 47),
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
