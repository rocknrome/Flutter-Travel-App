import 'package:flutter/material.dart';
import 'package:travel_app/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Exclusive Hotels',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // ignore: avoid_print
                  print("See All"); // FOR TESTING PURPOSES
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 320.0,
          //color: Colors.blue, // FOR TESTING PURPOSES
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return Container(
                width: 320.0,
                margin: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 10.0,
                      child: Container(
                        height:
                            120.0, // Fixed height Container to wrap the description for consistent look of cards' description
                        width: 320.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.start, //Centered the text
                            children: <Widget>[
                              Text(
                                hotel.name,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                                maxLines: 1, // Ensures the text does not wrap
                                overflow: TextOverflow
                                    .ellipsis, // Adds ellipsis if text overflows
                              ),
                              const SizedBox(
                                  height:
                                      4.0), // Provides spacing between hotel name and address
                              Text(
                                hotel.address,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines:
                                    3, // Adjusted to 3 lines to fit the address
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                  height:
                                      4.0), // Provides spacing between address and price
                              Text(
                                '\$${hotel.price} / night',
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 190.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
