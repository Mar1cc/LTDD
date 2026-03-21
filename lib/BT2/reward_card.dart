import 'package:flutter/material.dart';
import 'reward.dart';

class RewardCard extends StatelessWidget {
  final Reward reward;
  const RewardCard({super.key, required this.reward});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Cột trái: Logo/Thương hiệu [cite: 751, 761]
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  reward.brand,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ),
            const SizedBox(width: 15),
            // Cột giữa: Chi tiết quà tặng [cite: 750, 754, 755]
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reward.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    reward.subTitle,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    reward.expiry,
                    style: const TextStyle(fontSize: 11, color: Colors.red),
                  ),
                ],
              ),
            ),
            // Cột phải: Nút hành động [cite: 752, 757, 764, 771]
            TextButton(
              onPressed: () {},
              child: Text(
                reward.buttonText,
                style: const TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
