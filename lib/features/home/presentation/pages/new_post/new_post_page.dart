import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quotly/core/common/widgets/list_tile/list_tile.dart';
import 'package:quotly/core/common/widgets/text_field/text_field.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_bloc.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_state.dart';
import 'package:quotly/features/home/presentation/widgets/new_post/image_selection.dart';
import 'package:quotly/features/home/presentation/widgets/new_post/share_button.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.newPost,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: AppPadding.padding,
        child: SingleChildScrollView(
          child: BlocConsumer<ImagePickerBloc, ImagePickerState>(
            listener: (blocContext, state) {
              if (state is ImagePickerFailure) {
                ScaffoldMessenger.of(
                  blocContext,
                ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  // Extracted Image preview gesture container
                  ImageSection(state: state),

                  SizedBox(height: AppSizes.spaceBtwItems),

                  // Description field
                  const AppTextField(
                    contentPadding: EdgeInsets.only(left: 0),
                    backgroundColor: Colors.transparent,
                    hintText: AppTexts.addDescription,
                  ),

                  // Mention people
                  AppListTile(
                    onPressed: () {},
                    leadingIcon: Iconsax.tag,
                    trailing: const Icon(Icons.arrow_forward_ios),
                    title: AppTexts.menstion,
                  ),

                  // Audience
                  AppListTile(
                    onPressed: () {},
                    leadingIcon: Iconsax.profile_2user,
                    trailing: const Icon(Icons.arrow_forward_ios),
                    title: AppTexts.audience,
                  ),
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: ShareButton(),
    );
  }
}
