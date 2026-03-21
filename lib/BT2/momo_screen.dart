import 'package:flutter/material.dart';

class MomoScreen extends StatelessWidget {
  const MomoScreen({super.key});

  // Widget dùng chung cho các ô dịch vụ [cite: 714-726]
  Widget _buildServiceItem(IconData icon, String label, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 32, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  // Widget cho tiêu đề các mục [cite: 727, 730, 736]
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mô phỏng MoMo"),
        backgroundColor: const Color(0xFFB0006D), // Màu hồng MoMo đặc trưng
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Lưới 12 dịch vụ chính [cite: 714-726]
            GridView.count(
              crossAxisCount: 4, // 4 cột [cite: 205]
              shrinkWrap: true, // Chiếm không gian cần thiết
              physics: const NeverScrollableScrollPhysics(), // Tắt cuộn riêng
              padding: const EdgeInsets.all(10),
              children: [
                _buildServiceItem(Icons.send, "Chuyển tiền", Colors.pink),
                _buildServiceItem(
                  Icons.receipt_long,
                  "Thanh toán\nhóa đơn",
                  Colors.blue,
                ),
                _buildServiceItem(
                  Icons.phone_android,
                  "Nạp tiền\nđiện thoại",
                  Colors.orange,
                ),
                _buildServiceItem(
                  Icons.vibration,
                  "Mua mã thẻ\ndi động",
                  Colors.orangeAccent,
                ),
                _buildServiceItem(Icons.redeem, "Hoa Tết\nMoMo", Colors.red),
                _buildServiceItem(
                  Icons.directions_walk,
                  "Đi bộ cùng\nMoMo",
                  Colors.green,
                ),
                _buildServiceItem(
                  Icons.water_drop,
                  "Thanh toán\nnước",
                  Colors.lightBlue,
                ),
                _buildServiceItem(
                  Icons.bar_chart,
                  "Quản lý\nchi tiêu",
                  Colors.purple,
                ),
                _buildServiceItem(Icons.groups, "Quỹ nhóm", Colors.blueGrey),
                _buildServiceItem(
                  Icons.show_chart,
                  "Chứng\nKhoán",
                  Colors.indigo,
                ),
                _buildServiceItem(
                  Icons.message,
                  "Viettel SMS",
                  Colors.redAccent,
                ),
                _buildServiceItem(Icons.apps, "Xem thêm\ndịch vụ", Colors.grey),
              ],
            ),

            _buildSectionHeader("Sự kiện đang diễn ra"), // [cite: 727]
            // 2. Banner quảng cáo [cite: 728-729]
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  color: Colors.amber[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.celebration,
                        size: 50,
                        color: Colors.orange,
                      ),
                      const Text(
                        "Đến 50 triệu",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const Text("Tích Lì Lộc càng nhiều, thưởng càng lớn"),
                    ],
                  ),
                ),
              ),
            ),

            _buildSectionHeader("MoMo đề xuất"), // [cite: 730]
            // 3. Lưới đề xuất (4 mục) [cite: 731-733]
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                _buildServiceItem(
                  Icons.currency_exchange,
                  "Vay nhanh",
                  Colors.green,
                ),
                _buildServiceItem(Icons.movie, "Mua vé xem...", Colors.red),
                _buildServiceItem(Icons.savings, "Túi Thần Tài", Colors.amber),
                _buildServiceItem(
                  Icons.credit_card,
                  "Ví Trả Sau",
                  Colors.lightBlue,
                ),
              ],
            ),

            // 4. Banner phụ cuối trang [cite: 734-735]
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.yellow),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.local_florist, color: Colors.orange),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "2025 nhờ ai mà nở hoa?\nGieo quẻ với AI, tìm quý nhân của bạn",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
