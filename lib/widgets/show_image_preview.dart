import 'package:portfoliosite/widgets/all_imports.dart';

Future<dynamic> showImagePreview(
    {required BuildContext context, required String image}) {
  return showDialog(
    context: context,
    useSafeArea: true,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        insetPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        buttonPadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        scrollable: true,
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      TextBuilder(
                        text: 'Image preview',
                        color: KBlack,
                        fontsize: 24,
                        fontweight: FontWeight.w400,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Expanded(
                    child: InteractiveViewer(
                      boundaryMargin: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: image,
                          fit: BoxFit.cover,
                          height: 600,
                          progressIndicatorBuilder:
                              (context, url, DownloadProgress) => Center(
                            child: CircularProgressIndicator(
                              value: DownloadProgress.progress,
                            ),
                          ),
                          errorWidget: (context, url, error)=>const Icon(Icons.error),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
