import 'package:flutter/material.dart';
import 'package:tt1/e_commerce_home/widgets/custom_appbar_sliver.dart';
import 'package:tt1/e_commerce_home/widgets/custom_appbar_widget.dart';
import 'package:tt1/e_commerce_home/widgets/custom_grid_view_card.dart';
import 'package:tt1/e_commerce_home/widgets/custom_list_view_item.dart';

class ECommerceHomeView extends StatefulWidget {
  const ECommerceHomeView({super.key});

  @override
  State<ECommerceHomeView> createState() => _ECommerceHomeViewState();
}

class _ECommerceHomeViewState extends State<ECommerceHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomAppBarSliver()),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 480,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: .80,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: CustomGridViewCard(),
                    );
                  },
                  itemCount: 8,
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text('List View Horizontal', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 6),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return CustomListViewItem();
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: CustomAppbarWidget(),
    );
  }
}
