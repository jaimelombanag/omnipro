import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_omni/features/domain/entities/elements.dart';
import 'package:test_omni/features/presentation/bloc/elements/remote/remore_elements_state.dart';
import 'package:test_omni/features/presentation/bloc/elements/remote/remote_elements_bloc.dart';
import 'package:test_omni/features/presentation/widgets/elements_item.dart';

class ScreenElements extends StatelessWidget {
  const ScreenElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OmniPro',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          // GestureDetector(
          //   onTap: () => _onShowSavedArticlesViewTapped(context),
          //   child: const Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 14),
          //     child: Icon(Icons.bookmark, color: Colors.black),
          //   ),
          // ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteElemenstBloc, RemoteElementsState>(
      builder: (_, state) {
        if (state is RemoteElementsLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteElementsError) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteElementsDone) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ElementysWidget(
                element: state.elements![index],
                onArticlePressed: (article) =>
                    _onArticlePressed(context, article),
              );
            },
            itemCount: state.elements!.length,
          );
        }
        return const SizedBox();
      },
    );
  }

  void _onArticlePressed(BuildContext context, ElementsEntity element) {
    Navigator.pushNamed(context, '/ArticleDetails', arguments: element);
  }

  void _onShowSavedArticlesViewTapped(BuildContext context) {
    Navigator.pushNamed(context, '/SavedArticles');
  }
}
