import 'package:bookly/core/utils/components/loading_effect.dart';
import 'package:bookly/features/Search/presentation/cubits/search_cubit.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_iteam.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchLoadingState) {
            return ListView.separated(
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => const LoadingEffect(),
              itemCount: 20,
            );
          } else if (state is SearchErrorState) {
            return Center(
              child: Text(state.errorMassage),
            );
          } else {
            return CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: Gap(16),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'searchResult'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Gap(16),
                ),
                SliverList.separated(
                  itemBuilder: (context, index) => BookCard(
                    model: book,
                    index: index,
                  ),
                  separatorBuilder: (context, index) => const Gap(20),
                  itemCount: book.items?.length ?? 0,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}