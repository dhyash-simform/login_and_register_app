import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final IconData borderLove = Icons.favorite_border_outlined;
  final IconData filledLove = Icons.favorite;

  List list = [1, 1, 1, 1, 1, 1, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('쿠폰'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 5; i++)
                list[i] == 1
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40,
                      )
                    : const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                        size: 40,
                      ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 5; i < 10; i++)
                list[i] == 1
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40,
                      )
                    : const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey,
                        size: 40,
                      ),
            ],
          ),
        ],
      ),
    );
  }
}
