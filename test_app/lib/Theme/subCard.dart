import 'package:flutter/material.dart';

Widget subCard({
  required String image,
  required String title,
  required String price,
  required String likes,
}) {
  return Container(
    width: 160,
    margin: const EdgeInsets.only(right: 16),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            image,
            height: 120,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "€ $price",
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.favorite_border, size: 14, color: Colors.white),
                const SizedBox(width: 4),
                Text(likes, style: const TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
