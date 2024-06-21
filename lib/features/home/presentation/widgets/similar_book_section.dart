import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/similar_book_listview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "alsoLiked".tr(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(16),
         SimilarBookListView(book: book,)
      ],
    );
  }
}
