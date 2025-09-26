import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class CloudServicesRow extends StatelessWidget {
  const CloudServicesRow({super.key});

  Widget _buildCloudItem(IconData icon, Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: color),
        const SizedBox(height: 8),
        SizedBox(
          width: 60,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: GlobalColors.white,
              height: 1.2,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCloudItem(Icons.cloud, Colors.orange, 'Amazon Web'),
          _buildCloudItem(Icons.cloud_queue, Colors.redAccent, 'Alibaba Cloud'),
          _buildCloudItem(Icons.cloud_circle, Colors.blueAccent, 'Google Cloud'),
          _buildCloudItem(Icons.cloud_done, Colors.purpleAccent, 'Heroku Cloud'),
        ],
      ),
    );
  }
}
