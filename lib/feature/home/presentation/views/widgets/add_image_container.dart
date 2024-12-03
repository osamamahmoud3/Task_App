import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class AddImageContainer extends StatefulWidget {
  const AddImageContainer({
    super.key,
    required this.onFileChanged,
  });
  final ValueChanged<File?> onFileChanged;

  @override
  State<AddImageContainer> createState() => _AddImageContainerState();
}

class _AddImageContainerState extends State<AddImageContainer> {
  bool isLoading = false;
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          isLoading = true;
        });
        try {
          await pickImage();
          widget.onFileChanged(imageFile);
        } on Exception catch (e) {}
        setState(() {
          isLoading = false;
        });
      },
      child: Stack(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [3, 2],
            color: const Color(0xFF5F33E1),
            radius: const Radius.circular(12),
            padding: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                width: double.infinity,
                height: 56,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: imageFile != null
                    ? Image.file(imageFile!)
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: SvgPicture.asset(
                                'assets/images/add_image_icon.svg'),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Add Img',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF5F33E1),
                              fontSize: 19,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          Visibility(
            visible: imageFile != null,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    imageFile = null;
                    widget.onFileChanged(imageFile);
                  });
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          )
        ],
      ),
    );
  }

  Future<void> pickImage() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    imageFile = File(image!.path);
  }
}
