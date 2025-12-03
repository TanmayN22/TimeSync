import 'package:flutter/material.dart';
import 'package:timesync/core/values/app_colors.dart';

/// the painter of the Map
class WorldMapPainter extends CustomPainter {
  // passing of the mapdata
  final List<List<int>> mapData;
  final int activeRow;
  final int activeCol;

  WorldMapPainter({
    required this.mapData,
    required this.activeRow,
    required this.activeCol,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // setting up the pen ( paint ) : use this to draw on the canvas
    final Paint dotPaint = Paint()..style = PaintingStyle.fill; // solid colors
    // how big the dots are :
    int totalRows = mapData.length;
    int totalCols = mapData[0].length;
    // calculate the size of one dot :
    double cellWidth = size.width / totalCols;
    double cellHeight = size.height / totalRows;

    /// calculate the radius of the dots
    /// the * 0.9 is give space between the dots ,
    /// if u increase it , it will increase the size of the dot which will overlap on the dots
    double radius = (cellWidth / 2) * 0.9;

    // logic Matrix traversal
    for (int i = 0; i < totalRows; i++) {
      for (int j = 0; j < totalCols; j++) {
        // check if its land(1):
        if (mapData[i][j] == 1) {
          // calculating exact center of the cell so it doesn't print some corner of the screen
          double x = (j * cellWidth) + (cellWidth / 2);
          double y = (i * cellHeight) + (cellHeight / 2);
          if (i == activeRow && j == activeCol) {
            dotPaint.color = AppColors.redColor;
            Offset centerPoint = Offset(x, y);
            canvas.drawCircle(centerPoint, radius, dotPaint);
          } else {
            dotPaint.color = AppColors.whiteColor;
            canvas.drawCircle(Offset(x, y), radius, dotPaint);
          }
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant WorldMapPainter oldDelegate) {
    // Return true if the active city changes, so the map redraws the red dot
    return oldDelegate.activeRow != activeRow ||
        oldDelegate.activeCol != activeCol;
  }
}
