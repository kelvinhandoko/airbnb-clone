import 'package:airbnb/screens/hotel_detail_screen.dart';
import 'package:airbnb/widget/image_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatefulWidget {
  const DestinationCard({Key? key});

  @override
  State<DestinationCard> createState() => _DestinationCardState();
}

class _DestinationCardState extends State<DestinationCard>
    with SingleTickerProviderStateMixin {
  bool _isFavorite = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Transform.translate(
            offset: Offset(10 * (1 - _animation.value), 0.0),
            child: child,
          ),
        );
      },
      child: IntrinsicHeight(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<HotelDetailScreen>(
                builder: (BuildContext context) => const HotelDetailScreen(),
              ),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  const ImageCarousel(),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IgnorePointer(
                      ignoring: false,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 100),
                        switchInCurve: Curves.easeIn,
                        switchOutCurve: Curves.easeOut,
                        child: IconButton(
                          key: ValueKey<bool>(_isFavorite),
                          onPressed: () {
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          },
                          icon: Icon(
                            _isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 36,
                            color: _isFavorite ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "bali, indonesia",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Text(
                        "1,100 kilometers away",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const Text(
                        "april 18 - 20",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: '\$153 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
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
                        ),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.black,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '4.94',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
