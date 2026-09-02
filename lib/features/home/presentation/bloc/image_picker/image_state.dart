
import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class ImagePickerState extends Equatable {
  const ImagePickerState();

  @override
  List<Object?> get props => [];
}

// Initial state before any image is picked
class ImagePickerInitial extends ImagePickerState {}

// State while the image picker is loading or active
class ImagePickerLoading extends ImagePickerState {}

// State when an image is successfully picked
class ImagePickerSuccess extends ImagePickerState {
  final File file;

  const ImagePickerSuccess(this.file);

  @override
  List<Object?> get props => [file];
}

// State if the selection fails or throws an error
class ImagePickerFailure extends ImagePickerState {
  final String errorMessage;

  const ImagePickerFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
