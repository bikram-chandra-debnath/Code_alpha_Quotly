
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_event.dart';
import 'package:quotly/features/home/presentation/bloc/image_picker/image_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  // final bool _picker;

  ImagePickerBloc() : super(ImagePickerInitial()) {
    // on<PickImageFromGallery>(_onPickImageFromGallery);
    // on<PickImageFromCamera>(_onPickImageFromCamera);
  }

  // Future<void> _onPickImageFromGallery(
  //   PickImageFromGallery event,
  //   Emitter<ImagePickerState> emit,
  // ) async {
  //   emit(ImagePickerLoading());
  //   try {
  //     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  //     if (image != null) {
  //       emit(ImagePickerSuccess(File(image.path)));
  //     } else {
  //       emit(ImagePickerInitial()); // User cancelled selection
  //     }
  //   } catch (e) {
  //     emit(ImagePickerFailure(e.toString()));
  //   }
  // }

  // Future<void> _onPickImageFromCamera(
  //   PickImageFromCamera event,
  //   Emitter<ImagePickerState> emit,
  // ) async {
  //   emit(ImagePickerLoading());
  //   try {
  //     final XFile? image = await _picker.pickImage(source: ImageSource.camera);
  //     if (image != null) {
  //       emit(ImagePickerSuccess(File(image.path)));
  //     } else {
  //       emit(ImagePickerInitial()); // User cancelled camera
  //     }
  //   } catch (e) {
  //     emit(ImagePickerFailure(e.toString()));
  //   }
  // }
}
