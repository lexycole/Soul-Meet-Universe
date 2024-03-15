import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soul_meet_num/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({
    Key? key,
    required this.imageUrl,
    required this.onUpload,
  }) : super(key: key);

  Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => ProfileDetailsScreen(
        imageUrl: imageUrl,
        onUpload: onUpload,
      ),
    );
  }

  final String? imageUrl;
  final void Function(String imageUrl) onUpload;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
      children: [
        Expanded(
          child: imageUrl != null
              ? Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                )
              : Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:Center(
                          child: Text('No Image'),
                    ),
                  )
                ),
        ),
        SizedBox(height: 5),
        ElevatedButton(
          onPressed: () async {
            final ImagePicker picker = ImagePicker();
            final XFile? image =
                await picker.pickImage(source: ImageSource.gallery);
            if (image == null) {
              return;
            }
            final imageExtension = image.path.split('.').last.toLowerCase();
            final imageBytes = await image.readAsBytes();
            final myUserId = supabase.auth.currentUser?.id;
            if (myUserId == null) {
              return;
            }
            final imagePath = '/$myUserId/profile';
            await supabase.storage.from('profiles').uploadBinary(
              imagePath,
              imageBytes,
              fileOptions: FileOptions(
                upsert: true,
                contentType: 'image/$imageExtension',
              ),
            );
            String imageUrl =
                supabase.storage.from('profiles').getPublicUrl(imagePath);
            imageUrl = Uri.parse(imageUrl).replace(queryParameters: {
              't': DateTime.now().millisecondsSinceEpoch.toString()
            }).toString();
            onUpload(imageUrl);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFC700),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          child: const Text(
            'Upload',
            style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
        ),
      ],
    ));
  }
}


Widget buildInstructionsText() {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
      children: <TextSpan>[
        TextSpan(
          text:
              'Please enter your full name at birth exactly as it shows on your birth certificate. Do not include Jr, III, other suffix, or symbols. ',
        ),
      ],
    ),
  );
}
