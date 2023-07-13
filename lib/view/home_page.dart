import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_view/pagination_view.dart';
import 'package:untitled/models/adventures.dart';
import 'package:untitled/models/grid_info.dart';
import 'package:untitled/network/base_network.dart';
import 'package:untitled/utils/base_utils.dart';
import 'package:untitled/widget/platform_indicator.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../feed_player/multi_manager/flick_multi_manager.dart';
import '../feed_player/multi_manager/flick_multi_player.dart';
import '../feed_player/readmore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final key = GlobalKey<PaginationViewState>();
  final flickMultiManager = FlickMultiManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Feeds", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: VisibilityDetector(
        key: ObjectKey(flickMultiManager),
        onVisibilityChanged: (visibility) {
          if (visibility.visibleFraction == 0 && mounted) {
            flickMultiManager.pause();
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: PaginationView<Adventures>(
            key: key,
            pullToRefresh: true,
            pageFetch: ApiCall.getList,
            paginationViewType: PaginationViewType.listView,
            itemBuilder: (context, adventure, index) {
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        () {
                          if (adventure.contents?.isNotEmpty == true) {
                            return PageView(
                              pageSnapping: true,
                              controller: PageController(keepPage: true),
                              children: adventure.contents!.map((e) {
                                final i = adventure.contents!.indexOf(e);

                                return Stack(
                                  children: [
                                    SizedBox(
                                      height: MediaQuery.of(context).size.width,
                                      width: MediaQuery.of(context).size.width,
                                      child: e.contentType == "IMAGE"
                                          ? CachedNetworkImage(
                                              fit: BoxFit.cover,
                                              imageUrl: '${e.contentUrl}',
                                            )
                                          : FlickMultiPlayer(
                                              url: '${e.contentUrl}',
                                              flickMultiManager: flickMultiManager,
                                              image: 'images/9th_may_poster.jpg',
                                            ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black54,
                                              borderRadius: 12.0.toAllBorderRadius,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 6,
                                            ),
                                            margin: 14.0.toAll,
                                            child: Text(
                                              "${i + 1}/${adventure.contents!.length}",
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                            );
                          }

                          return const SizedBox.shrink();
                        }(),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black45,
                                Colors.black38,
                                Colors.black12,
                                Colors.black.withOpacity(0.06),
                              ],
                            ),
                          ),
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                color: Colors.white,
                                imageUrl: '${adventure.activityIcon}',
                                placeholder: (context, url) {
                                  return const Center(child: CircularProgressIndicator());
                                },
                                errorWidget: (context, url, error) {
                                  return const Icon(Icons.error);
                                },
                              ),
                            ),
                            title: Text(
                              adventure.activity ?? 'Activity',
                              style: const TextStyle(color: Colors.white),
                            ), // Replace with the post author's name
                            subtitle: Row(
                              children: [
                                () {
                                  GridInfo? info;
                                  if (adventure.gridInfo?.isNotEmpty == true) {
                                    info = adventure.gridInfo?.firstWhereOrNull(
                                        (element) => element.name == "distance");
                                  }
                                  if (info != null) {
                                    return Text(
                                      "${info.value} At. ${info.name}",
                                      style: const TextStyle(color: Colors.white),
                                    );
                                  }

                                  return const SizedBox.shrink();
                                }(),
                              ],
                            ), // Replace with the post timestamp
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: 8.0.toAll,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReadMoreText(
                          "${adventure.description}".trim(),
                          textAlign: TextAlign.left,
                          trimLength: 80,
                          moreStyle: TextStyle(color: Colors.blue[800]),
                          lessStyle: TextStyle(color: Colors.blue[800]),
                        ),
                        10.0.toVSB,
                        if (adventure.tags?.isNotEmpty == true)
                          Text(
                            "#${adventure.tags!.join(" #")}",
                            style: TextStyle(color: Colors.blue[800]),
                          ),
                        if (adventure.tags?.isNotEmpty == true) 10.0.toVSB,
                      ],
                    ),
                  ),
                ],
              );
            },
            onError: (dynamic error) => const Center(
              child: Text('Some error occurred'),
            ),
            onEmpty: const Center(
              child: Text('Sorry! This is empty'),
            ),
            bottomLoader: Center(
              child: Platform.isIOS
                  ? const CupertinoActivityIndicator()
                  : const CircularProgressIndicator(),
            ),
            initialLoader: const PlatformIndicator(),
          ),
        ),
      ),
    );
  }
}
