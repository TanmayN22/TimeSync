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
        title: SmallText(
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
      body: Center(
        child: Column(
          children: [
            Flexible(
              // we are using aspect ratio so that the map does not get stretched
              // since the map matrix is 54 cols wide and 32 rows tall
              // we use that as the ratio and lock it or-else are circle will look like ovals on some phones
              child: AspectRatio(
                aspectRatio: 54 / 32,
                child: CustomPaint(
                  // our world map
                  painter: WorldMapPainter(
                    mapData: WorldMapData.map,
                    activeRow: activeRow,
                    activeCol: activeCol,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
