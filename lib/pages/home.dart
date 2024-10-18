import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layouts',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cloud_queue))
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildJournalEntry(),
                  const Divider(),
                  _buildJournalWeather(),
                  const Divider(),
                  _buildJournalTags(),
                  const Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Image _buildJournalHeaderImage() {
    return const Image(
      image: AssetImage('assets/images/japanese_traditional_house1.jpg'),
      fit: BoxFit.cover,
    );
  }

  Column _buildJournalEntry() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Birthday',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        Text(
          'It\'s going to be a great bithday. We are going out for dinner at my favorite place, then watch a moview after we go to the gelateria for ice cream and espresso. ',
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }

  Row _buildJournalWeather() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            )
          ],
        ),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '81 Clear',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '4500 San Alpho Drive, Dallas, TX United States',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Wrap _buildJournalTags() {
    return Wrap(
        spacing: 8.0,
        children: List.generate(7, (int index) {
          return Chip(
            label: Text(
              'Gift ${index + 1}',
              style: const TextStyle(fontSize: 10.0),
            ),
            avatar: Icon(
              Icons.card_giftcard,
              color: Colors.blue.shade300,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: const BorderSide(color: Colors.grey),
            ),
            backgroundColor: Colors.grey.shade100,
          );
        }));
  }

  Row _buildJournalFooterImages() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/image1.webp'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/image2.avif'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/image1.webp'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.cake),
              Icon(Icons.star_border),
              Icon(Icons.music_note),
            ],
          ),
        )
      ],
    );
  }
}
