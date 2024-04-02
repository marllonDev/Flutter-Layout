import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String name;
  final String location;
  
  const TitleSection({super.key,  required this.name, required this.location}); //contrutor


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            //para usar o espaço livre na linha, e colocar no inicio da linha essa coluna.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  //para add espaço entre as linhas de texto.
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
            Icon(
              Icons.star,
              color: Colors.red[500]
          ),
          const Text('41')
        ],
      ),
    );
  }
}
