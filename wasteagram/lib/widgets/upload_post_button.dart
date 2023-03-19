import 'package:flutter/material.dart';

class UploadPostButton extends StatelessWidget {
  const UploadPostButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "Upload post button",
      child: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 72.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(width: 24.0),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.cloud_upload,
                    color: Colors.white,
                    size: 48.0,
                  ),
                ),
              ),
              SizedBox(width: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
