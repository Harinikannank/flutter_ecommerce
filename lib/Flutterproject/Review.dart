import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Review(),
    );
  }
}

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Review Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
                 //centerTitle : true;//
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/flutterhomepage.jpeg"),
            ),
            const SizedBox(width: 10),
            Text(
              'Maria',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            RatingBarIndicator(
              rating: 4,
              itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
            const SizedBox(width: 10),
            Text(
              '01 Mar, 2024',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "This application is very nice and user-friendly",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          "The application is very easy to navigate",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.grey[700],
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "LikeMe Fashions",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                  Text(
                    "02 Mar, 2024",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Thankyou for your valuable feedback!",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "It means a lot to us.Keep Supporting us.",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({Key? key, required this.rating}) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
      itemCount: 5,
      itemSize: 20.0,
      direction: Axis.horizontal,
    );
  }
}

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: Colors.grey,
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
          ),
        ),
      ],
    );
  }
}
