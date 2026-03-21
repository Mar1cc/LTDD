import 'package:flutter/material.dart';
import 'list_item_new.dart';

class BaiTap01Screen extends StatefulWidget {
  const BaiTap01Screen({super.key});

  @override
  State<BaiTap01Screen> createState() => _BaiTap01ScreenState();
}

class _BaiTap01ScreenState extends State<BaiTap01Screen> {
  // Hàm hiển thị Dialog [cite: 412-421]
  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  // Widget Tiêu đề màu xanh dương [cite: 699, 703]
  Widget _buildSectionHeader(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      color: Colors.blue,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Widget Hình tròn tím cho GridView [cite: 700-702]
  Widget _buildCircleItem(String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFF8A2BE2),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Cho phép cuộn toàn trang [cite: 83]
        child: Column(
          children: [
            _buildSectionHeader("Chọn loại đề tài"),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true, // Quan trọng: Cho phép nằm trong Column
              physics:
                  const NeverScrollableScrollPhysics(), // Tắt cuộn riêng của Grid
              children: [
                _buildCircleItem("Đồ án"),
                _buildCircleItem("KLKS"),
                _buildCircleItem("Luận văn"),
                _buildCircleItem("Khác"),
              ],
            ),

            _buildSectionHeader("Chọn chuyên ngành thực hiện"),

            // ListView hiển thị các chuyên ngành [cite: 704-712]
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListItemNew(
                  title: "Công nghệ phần mềm",
                  content:
                      "Phát triển các ứng dụng giải quyết các vấn đề thực tế",
                  dialogContent: "CNPM",
                  function: _showDialog,
                ),
                ListItemNew(
                  title: "Hệ thống thông tin",
                  content:
                      "Phát triển các kỹ thuật xử lý thông tin trong tổ chức",
                  dialogContent: "HTTT",
                  function: _showDialog,
                ),
                ListItemNew(
                  title: "Mạng máy tính",
                  content: "Xử lý các vấn đề liên quan đến mạng máy tính",
                  dialogContent: "MMT",
                  function: _showDialog,
                ),
                ListItemNew(
                  title: "An toàn thông tin",
                  content: "Thiết kế và đảm bảo an toàn cho hệ thống máy tính",
                  dialogContent: "BMTT",
                  function: _showDialog,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
