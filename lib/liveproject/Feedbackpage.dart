import 'package:flutter/material.dart';


class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _nameController =
  TextEditingController(text: 'Widle Studio');
  final TextEditingController _emailController =
  TextEditingController(text: 'xyz123@gmail.com');
  final TextEditingController _contactController =
  TextEditingController(text: '+91 00000 00000');
  final TextEditingController _commentsController =
  TextEditingController();

  double _currentSliderValue = 0;
  FeedbackRating _currentRating = FeedbackRating.worst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Feedback',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green, size: 30),
          onPressed: () {
            // Handle back button action here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                ),
                style: TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Number',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: _contactController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Share your experience in scaling',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            _buildEmojiRatingRow(),
            Slider(
              value: _currentSliderValue,
              min: 0,
              max: 4,
              divisions: 4,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  _currentRating = FeedbackRating.values[value.toInt()];
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: _commentsController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Add your comments...',
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle submit action here
                },
                style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.green, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:Colors.white),
                ),
                child: Text('SUBMIT'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmojiRatingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildEmojiRatingIcon(
            FeedbackRating.worst, Icons.sentiment_very_dissatisfied, 'Worst'),
        _buildEmojiRatingIcon(
            FeedbackRating.notGood, Icons.sentiment_dissatisfied, 'Not Good'),
        _buildEmojiRatingIcon(
            FeedbackRating.fine, Icons.sentiment_neutral, 'Fine'),
        _buildEmojiRatingIcon(
            FeedbackRating.good, Icons.sentiment_satisfied, 'Good'),
        _buildEmojiRatingIcon(
            FeedbackRating.veryGood, Icons.sentiment_very_satisfied, 'Very Good'),
      ],
    );
  }

  Widget _buildEmojiRatingIcon(
      FeedbackRating rating, IconData icon, String label) {
    bool isSelected = _currentRating == rating;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentRating = rating;
          _currentSliderValue = rating.index.toDouble();
        });
      },
      child: Column(
        children: [
          Icon(icon, color: isSelected ? Colors.green : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.green : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

enum FeedbackRating { worst, notGood, fine, good, veryGood }
