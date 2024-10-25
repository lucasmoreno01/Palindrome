import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  String palavra = '';

  // Inverter palavra
  String inverterPalavra(String palavra) {
    return palavra.split('').reversed.join('');
  }

  bool isPalindrome(String word) {
    return word.toLowerCase() == inverterPalavra(word).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Palíndromos",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xfff2a900),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    controller: textController,
                    decoration: const InputDecoration(
                      hintText: 'Digite uma palavra',
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    setState(() {
                      String inputText = textController.text.trim(); // remover espaços no inicio e no fim
                      palavra = inputText.isNotEmpty ? inputText : '';
                      textController.clear();
                    });
                  },
                  icon: const Icon(Icons.add),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              palavra,
              style: const TextStyle(fontSize: 18),
            ),
            palavra.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Invertida: ${inverterPalavra(palavra)}"),
                      Text(
                        isPalindrome(palavra)
                            ? '$palavra é um palíndromo'
                            : '$palavra não é um palíndromo',
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
