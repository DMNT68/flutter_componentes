import 'package:flutter/material.dart';

import 'package:componentes/src/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.album,
              color: AppTheme.primary,
            ),
            title: Text('Star Wars'),
            subtitle: Text(
                'Star Wars, conocida también en español como La guerra de las galaxias, ​​​ es una franquicia compuesta primordialmente de una serie de películas concebidas por el cineasta estadounidense George Lucas en la década de 1970, y producidas y distribuidas por The Walt Disney Company a partir de 2012.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
