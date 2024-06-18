import 'package:flutter/material.dart';
import 'package:flutter_app_watch/pages/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(text: 'EKHOLM', price: '249', image: 'assets/image_1.png'),
      Item(text: 'CELSO', price: '220', image: 'assets/image_2.png'),
      Item(text: 'HISAKO', price: '249', image: 'assets/image_3.png'),
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBar(
              primary: false,
              title: Text(
                'Watches',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              centerTitle: true,
              leading: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(width: 15)
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Item item = items[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          'details',
                          arguments: item,
                        );
                      },
                      child: Stack(
                        children: [
                          Hero(
                            tag: item.text,
                            child: Image.asset(item.image),
                          ),
                          Positioned(
                            bottom: 25,
                            left: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.text,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                Text(
                                  "\$${item.price}",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Discover',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const Icon(Icons.remove),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.grey[200],
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/watch_1.png'),
                                      const SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'ORMOUS',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'White, size L',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      '\$249',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              color: Colors.grey[200],
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/watch_2.png'),
                                      const SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'HISAKO',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Black, size L',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      '\$249',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              color: Colors.grey[200],
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/watch_1.png'),
                                      const SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'ORMOUS',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'White, size M',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      '\$229',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              color: Colors.grey[200],
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/watch_2.png'),
                                      const SizedBox(width: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'HISAKO',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Black, size M',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.grey[600],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      '\$229',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
