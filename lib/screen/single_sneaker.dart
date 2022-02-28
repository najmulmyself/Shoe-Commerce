import 'package:flutter/material.dart';

class SingleSneaker extends StatelessWidget {
  const SingleSneaker({
    Key? key,
    required this.brands,
  }) : super(key: key);

  final List brands;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 18.0, top: 18, bottom: 12),
          child: Text(
            'Sneakers',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Container(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      brands[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: brands.length,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 280,
          width: double.infinity,
          // color: Colors.grey,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20),
          //   color: Colors.red,
          // ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Nike',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Air Max 270',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '\$129.00',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Image(
                          height: 180,
                          image: AssetImage(
                            'assets/images/sneakerpage.png',
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}