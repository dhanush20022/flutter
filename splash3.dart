import 'package:flutter/material.dart';
import 'feedbackscreen.dart';

class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  int _rating = 0;
  final TextEditingController _controller = TextEditingController();

  bool get isSubmitEnabled => _rating > 0 && _controller.text.trim().isNotEmpty;

  void _handleSubmit() {
    if (isSubmitEnabled) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FeedbackScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/feedback.png', height: 200),
                const SizedBox(height: 20),
                const Text(
                  "share your experience",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text("with our service", style: TextStyle(fontSize: 18)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        index < _rating ? Icons.star : Icons.star_border,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          _rating = index + 1;
                        });
                      },
                    );
                  }),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: "suggestions or complaints",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: isSubmitEnabled ? _handleSubmit : null,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
