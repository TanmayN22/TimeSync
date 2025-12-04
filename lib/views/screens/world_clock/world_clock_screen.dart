import 'package:flutter/material.dart';
import 'package:timesync/core/values/app_colors.dart';
import 'package:timesync/data/world_map_data.dart';
import 'package:timesync/views/custom_widgets/small_text.dart';
import 'package:timesync/views/custom_widgets/world_map.dart';

class WorldClockScreen extends StatelessWidget {
  final int activeRow;
  final int activeCol;
  const WorldClockScreen({super.key, this.activeRow = 0, this.activeCol = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const SmallText(
          text: "World Clock",
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
        actions: const [
          Icon(Icons.settings_outlined, color: AppColors.whiteColor),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            // our world map
            AspectRatio(
              aspectRatio: 54 / 32,
              child: CustomPaint(
                painter: WorldMapPainter(
                  mapData: WorldMapData.map,
                  activeRow: activeRow,
                  activeCol: activeCol,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Make this toggle button
            Row(
              children: [
                // Clocks button
                TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: AppColors.redColor, width: 1),
                    backgroundColor: AppColors.whiteColor,
                  ),
                  onPressed: () {},
                  child: SmallText(
                    text: "Clocks",
                    fontSize: 15,
                    color: AppColors.redColor,
                  ),
                ),
                SizedBox(width: 10),
                // Time Sync Button
                TextButton(
                  style: TextButton.styleFrom(
                    // side: BorderSide(color: AppColors.redColor, width: 1),
                    backgroundColor: AppColors.whiteColor,
                  ),
                  onPressed: () {},
                  child: SmallText(
                    text: "Time Sync",
                    fontSize: 15,
                    color: AppColors.backgroundColor,
                  ),
                ),
                Spacer(),
                // Add time button
                TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: AppColors.whiteColor, width: 1),
                    backgroundColor: AppColors.greyColor,
                  ),
                  onPressed: () {},
                  child: SmallText(
                    text: "ADD +",
                    fontSize: 15,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // CLock grid layout
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
