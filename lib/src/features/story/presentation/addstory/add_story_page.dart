import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/widgets/form_field_widget.dart';
import '../../../../core/common/widgets/image_picker_widget.dart';
import '../../../../core/common/widgets/main_button_widget.dart';
import '../../../../core/helper/helper_function.dart';
import 'bloc/add_story_bloc.dart';

class AddStoryPage extends StatefulWidget {
  const AddStoryPage({super.key});

  @override
  State<AddStoryPage> createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
  final descriptionController = TextEditingController();
  String? image;

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Story'),
      ),
      body: BlocConsumer<AddStoryBloc, AddStoryState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            success: (value) {
              HelperFunction.snackBar(
                context: context,
                message: value.response?.message ?? '',
              );
              context.pop(true);
            },
            error: (value) => HelperFunction.snackBar(
              context: context,
              message: value.message,
            ),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (value) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            orElse: () => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: state.maybeMap(
                        orElse: () {
                          return ImagePickerWidget(
                            imageFile: image,
                            width: w / 1.5,
                            height: h / 3,
                          );
                        },
                        pickImage: (value) {
                          image = value.image?.path ?? '';
                          return ImagePickerWidget(
                            imageFile: value.image?.path,
                            width: w / 1.5,
                            height: h / 3,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: MainButtonWidget(
                            onPressed: () {
                              context.read<AddStoryBloc>().add(
                                    const AddStoryEvent.pickImageCamera(),
                                  );
                            },
                            text: 'Camera',
                          ),
                        ),
                        Center(
                          child: MainButtonWidget(
                            onPressed: () {
                              context.read<AddStoryBloc>().add(
                                    const AddStoryEvent.pickImageGallery(),
                                  );
                            },
                            text: 'Gallery',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    FormFieldWidget(
                      controller: descriptionController,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 7,
                      hintText: 'Tuliskan cerita kamu disini...',
                      contentPadding: const EdgeInsets.all(15.0),
                    ),
                    const SizedBox(height: 15.0),
                    Center(
                      child: MainButtonWidget(
                        onPressed: () {
                          context.read<AddStoryBloc>().add(
                                AddStoryEvent.uploadStory(
                                  image: File(image ?? ''),
                                  description: descriptionController.value.text,
                                ),
                              );
                        },
                        text: 'Submit',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
