import 'package:flutter/material.dart';
import 'reward.dart';
import 'reward_card.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dữ liệu mẫu
    final List<Reward> rewards = [
      Reward(
        brand: "CGV",
        title: "CGV - Đồng giá 79K",
        subTitle: "Khi mua vé CGV 2D trên MoMo",
        expiry: "HSD: 28/02/2025",
        buttonText: "Dùng ngay",
      ),
      Reward(
        brand: "Sim",
        title: "Giảm 100K",
        subTitle: "Cho đơn từ 0đ",
        expiry: "HSD: 28/02/2025",
        buttonText: "Dùng ngay",
      ),
      Reward(
        brand: "VIB",
        title: "Tặng 100K",
        subTitle: "Khi mở thẻ VIB Online Plus 2in1",
        expiry: "HSD: 31/03/2025",
        buttonText: "Dùng ngay",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quà của Vinh (7)",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Column(
        children: [
          // Thanh lọc cuộn ngang [cite: 741-744]
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: ["Sắp xếp", "Dịch vụ", "Gần tôi", "Yêu thích"].map((
                filter,
              ) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(label: Text(filter)),
                );
              }).toList(),
            ),
          ),
          // Danh sách quà tặng cuộn dọc [cite: 88, 89]
          Expanded(
            child: ListView.builder(
              itemCount: rewards.length,
              itemBuilder: (context, index) =>
                  RewardCard(reward: rewards[index]),
            ),
          ),
        ],
      ),
    );
  }
}
