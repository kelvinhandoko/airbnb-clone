import 'package:airbnb/models/testimonial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestiCard extends StatelessWidget {
  final Testimonial testimonial;
  const TestiCard({required this.testimonial, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    ...Iterable.generate(testimonial.ratings.round()).map((i) {
                      return const Icon(
                        Icons.star,
                        color: Colors.black,
                        size: 16,
                      );
                    }),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text('·'),
                ),
                Text(
                  testimonial.date,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
                child: Text(
              testimonial.content,
              maxLines: 4,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  overflow: TextOverflow.ellipsis),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(testimonial.image),
                ),
                title: Text(
                  testimonial.name,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(testimonial.location),
              ),
            )
          ],
        ),
      ),
    );
  }
}
