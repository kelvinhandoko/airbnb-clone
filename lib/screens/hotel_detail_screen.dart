import 'package:airbnb/constant/constant.dart';
import 'package:airbnb/widget/testi_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:airbnb/widget/icon_container.dart';
import 'package:airbnb/widget/image_carousel.dart';

class HotelDetailScreen extends StatefulWidget {
  const HotelDetailScreen({super.key});

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 1)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container(
              constraints: const BoxConstraints.expand(),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    pinned: true,
                    elevation: 2,
                    stretch: true,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(4.0),
                      child: Container(
                        color: Colors.grey[400],
                        height: 1.0,
                      ),
                    ),
                    onStretchTrigger: () async {},
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconContainer(
                          icon: CupertinoIcons.back,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Row(
                          children: [
                            IconContainer(
                              icon: CupertinoIcons.share,
                              onPressed: null,
                            ),
                            IconContainer(
                              icon: CupertinoIcons.heart,
                              onPressed: null,
                            ),
                          ],
                        )
                      ],
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: const FlexibleSpaceBar(
                      stretchModes: [
                        StretchMode.zoomBackground,
                        StretchMode.blurBackground,
                      ],
                      background: ImageCarousel(),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(24.0),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        <Widget>[
                          // villa title
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Rice Joglo Eco - Stay - Rumah Pohon",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              const Text(
                                "Rumah pohon di Ubud, Indonesia",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              const Row(
                                children: [
                                  Text('2 guests'),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('·'),
                                  ),
                                  Text('1 bedroom'),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('·'),
                                  ),
                                  Text('1 bed'),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('·'),
                                  ),
                                  Text('1 bath'),
                                ],
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  const Text(
                                    '4.94',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('·'),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: const Text(
                                      "160 reviews",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                              height: 1,
                            ),
                          ),

                          // host details
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              radius: 24.0,
                              backgroundImage: AssetImage('assets/profile.jpg'),
                            ),
                            title: Text(
                              'Host by Kristine',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.0),
                            ),
                            subtitle: Text('11 years hosting'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                              height: 1,
                            ),
                          ),

                          // villa features
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.table_bar_outlined,
                                size: 30.0,
                              ),
                            ),
                            title: Text(
                              'Special work area',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.0),
                            ),
                            subtitle: Text('11 years hosting'),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.meeting_room_outlined,
                                size: 30.0,
                              ),
                            ),
                            title: Text(
                              'Self check in',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.0),
                            ),
                            subtitle: Text(
                                'you can check in with the building staff'),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.pets_outlined,
                                size: 30.0,
                              ),
                            ),
                            title: Text(
                              'furry friends allowed',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.0),
                            ),
                            subtitle: Text('Pets are allowed in this property'),
                          ),

                          // villa description
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                              height: 1,
                            ),
                          ),
                          const Text(
                            '''Stay in a treehouse made of antique recycled and carved teak, with panoramic views of the rice fields from every room.

Breathe in nature in a luxurious open bathroom overlooking the jungle ravine.

Our Eco-stay property includes a tropical pool, organic food farm with animals, organic restaurant and wi-fi.

Breakfast is complimentary with your stay.

Note : There is no car access into our rice field. The walk is 20 mins to Ubud's main street. You can also hire a scooter.''',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16.0),
                          ),

                          // vila bedroom list
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                              height: 1,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Where you'll sleep",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24.0),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              SizedBox(
                                width: 200,
                                child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('assets/bedroom.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              const Text(
                                "Bedroom",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              const Text(
                                "1 queen bed",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),

                          // villa amenities
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                              height: 1,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "What this place offers",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24.0),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Column(
                                children: villaAmenities
                                    .map((amenity) => ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          leading: Icon(
                                            amenity.icon,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          title: Text(
                                            amenity.name,
                                            style:
                                                const TextStyle(fontSize: 18.0),
                                          ),
                                        ))
                                    .toList(),
                              ),
                              TextButton(
                                onPressed: null,
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Show all',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ],
                          ),

                          // villa testimonials
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Divider(
                              color: Colors.grey.shade300,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: const Border(
                          top: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "5.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 48.0),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              "guest favorite",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 250,
                              child: Text(
                                "one of the most popular places in the area based on reviews and ratings",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            CarouselSlider(
                              items: testimonials
                                  .map(
                                    (testimonial) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: TestiCard(
                                            testimonial: testimonial)),
                                  )
                                  .toList(),
                              options: CarouselOptions(
                                height: 250,
                                enableInfiniteScroll: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RichText(
                          text: const TextSpan(
                        text: '\$153 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'night',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: const Text(
                        "Apr 6 - 8",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14.0),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.red.shade700),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Reserve',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
