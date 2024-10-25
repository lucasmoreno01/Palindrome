import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:palindrome/store/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  final TextEditingController textController = TextEditingController();

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
          child: Observer(builder: (_) {
            return Column(
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
                        controller.setPalavra(textController.text);
                      },
                      icon: const Icon(Icons.add),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  controller.palavra,
                  style: const TextStyle(fontSize: 18),
                ),
                controller.palavra.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Invertida: ${controller.palavraInvertida}"),
                          Text(
                            controller.isPalindrome
                                ? '${controller.palavra} é um palíndromo'
                                : '${controller.palavra} não é um palíndromo',
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
              ],
            );
          })),
    );
  }
}
