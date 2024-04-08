import 'package:airbnb/models/testimonial.dart';
import 'package:airbnb/models/villa_amenitiy.dart';
import 'package:airbnb/utils/random_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<VillaAmenity> villaAmenities = [
  VillaAmenity(name: "wifi", icon: CupertinoIcons.wifi),
  VillaAmenity(name: "air conditioning", icon: CupertinoIcons.snow),
  VillaAmenity(name: "kitchen", icon: CupertinoIcons.bolt_fill),
  VillaAmenity(name: "pool", icon: CupertinoIcons.drop),
  VillaAmenity(name: "parking", icon: CupertinoIcons.car_detailed),
  VillaAmenity(name: "gym", icon: Icons.fitness_center),
];

final List<Testimonial> testimonials = [
  Testimonial(
    name: "John Doe",
    date: randomDate(),
    content:
        "nice place to stay for a vacation, the view is amazing and the staff is very friendly. I will definitely come back here again.",
    image: "https://source.unsplash.com/random/?People",
    ratings: 4.5,
    location: "Bali, Indonesia",
  ),
  Testimonial(
    name: "Alice Smith",
    date: randomDate(),
    content:
        "Great place to stay, the room is very clean and the staff is very helpful. I will definitely come back here again.",
    image: "https://source.unsplash.com/random/?People&4",
    ratings: 4.8,
    location: "Medan, Indonesia",
  ),
  Testimonial(
    name: "Emma Johnson",
    date: randomDate(),
    content:
        "i would recommend this place to anyone who is looking for a place to stay. The view is amazing and the staff is very friendly. I will definitely come back here again.",
    image: "https://source.unsplash.com/random/?People",
    ratings: 4.2,
    location: "Lombok, Indonesia",
  ),
  Testimonial(
    name: "Michael Brown",
    date: randomDate(),
    content:
        "good place to stay for a vacation, the view is amazing and the staff is very friendly. I will definitely come back here again.",
    image: "https://source.unsplash.com/random/?People&2",
    ratings: 4.0,
    location: "Jakarta, Indonesia",
  ),
  Testimonial(
    name: "Sophia Wilson",
    date: randomDate(),
    content:
        "there is nothing to complain about this place, the view is amazing and the staff is very friendly. I will definitely come back here again.",
    image: "https://source.unsplash.com/random/?People&3",
    ratings: 4.6,
    location: "Padang, Indonesia",
  ),
];
