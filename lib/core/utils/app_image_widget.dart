import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../constants/asset_names.dart' show profileAvatar;
import './app_circular_progress_widget.dart';

class AppImageWidget extends StatelessWidget {
  final String imgSrc;
  final BoxFit fit;
  const AppImageWidget({
    super.key,
    required this.imgSrc,
    this.fit = BoxFit.fill,
  });

  CacheManager get cacheManager => CacheManager(
        Config(
          'customCacheKey',
          stalePeriod: const Duration(
            days: 5,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgSrc,
      fit: fit,
      cacheManager: cacheManager,
      progressIndicatorBuilder: _buildProgressIndicator,
      errorWidget: _buildErrorWidget,
    );
  }

  Widget _buildErrorWidget(BuildContext context, String url, Object error) => Image.asset(
        profileAvatar,
        fit: fit,
      );

  Widget _buildProgressIndicator(BuildContext context, String url, DownloadProgress progress) => appCircularProgressWidget(
        progress.progress,
      );
}
