import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_bloc.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_event.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_state.dart';

class ImageSection extends StatelessWidget {
  final ImagePickerState state;

  const ImageSection({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ImagePickerBloc>().add(PickImageFromGallery());
      },
      child: _buildImageWidget(context),
    );
  }

  Widget _buildImageWidget(BuildContext context) {
    if (state is ImagePickerLoading) {
      return Container(
        height: 300,
        width: double.maxFinite,
        decoration: const BoxDecoration(color: AppColors.darkGrey),
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    if (state is ImagePickerSuccess) {
      return Container(
        height: 300,
        width: double.maxFinite,
        decoration: const BoxDecoration(color: AppColors.darkGrey),
        child: Image.file(
          (state as ImagePickerSuccess).file,
          fit: BoxFit.cover,
        ),
      );
    }

    if (state is ImagePickerFailure) {
      return Container(
        height: 300,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.darkGrey.withValues(alpha: 0.5),
        ),
        child:  Center(child: Text(AppTexts.faieldImage, style: Theme.of(context).textTheme.titleSmall,)),
      );
    }

    // Default Fallback: ImagePickerInitial state
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.darkGrey.withValues(alpha: 0.5),
      ),
      child: Center(
        child: Text(
          AppTexts.noImage,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
