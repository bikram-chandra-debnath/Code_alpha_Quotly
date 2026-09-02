import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quotly/core/common/widgets/list_tile/list_tile.dart';
import 'package:quotly/core/common/widgets/text_field/text_field.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_bloc.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_state.dart';
import 'package:quotly/features/home/presentation/widgets/new_post/share_button.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppTexts.newPost,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),

        body: Padding(
          padding: AppPadding.padding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(),
                SizedBox(height: AppSizes.spaceBtwItems),

                // description field
                AppTextField(
                  contentPadding: EdgeInsets.only(left: 0),
                  backgroundColor: Colors.transparent,
                  hintText: AppTexts.addDescription,
                ),

                // mention people
                AppListTile(
                  onPressed: () {},
                  leadingIcon: Iconsax.tag,
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: AppTexts.menstion,
                ),
                // Audience
                AppListTile(
                  onPressed: () {},
                  leadingIcon: Iconsax.profile_2user,
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: AppTexts.audience,
                ),
              ],
            ),
          ),
        ),
        // share button
        bottomNavigationBar: ShareButton(),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.read<ImagePickerBloc>().add(PickImageFromGallery());
      },
      child: BlocConsumer<ImagePickerBloc, ImagePickerState>(
        listener: (context, state) {
          if (state is ImagePickerFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
        },
        builder: (context, state) {
          if (state is ImagePickerInitial) {
            return Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(color: AppColors.darkGrey),
              child: Center(child: const Text("No image selected")),
            );
          } else if (state is ImagePickerLoading) {
            Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(color: AppColors.darkGrey),
              child: Center(child: const CircularProgressIndicator()),
            );
          } else if (state is ImagePickerSuccess) {
            return Image.file(state.file, fit: BoxFit.cover);
          } else if (state is ImagePickerFailure) {
            Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(color: AppColors.darkGrey),
              child: Center(child: const Text("Failed to load image")),
            );
          }
          return SizedBox(height: AppSizes.appBarHeight);
        },
      ),
    );
  }
}
