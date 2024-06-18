import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Item;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: args.text,
                    child: Image.asset(
                      args.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 30,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Container(
                            height: 2,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 2,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      args.text,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "\$${args.price}",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Named after asteroid 6 0 9 4 (h i s a k o) is currently travelling through time and space.',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.only(right: 15),
                            color: const Color(0xffD5A587),
                            child: const Center(
                              child: Text(
                                'BUY NOW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 207, 207, 207),
                            ),
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Item {
  final String text;
  final String price;
  final String image;

  Item({
    required this.text,
    required this.price,
    required this.image,
  });
}
