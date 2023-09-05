import 'package:portfoliosite/utils/url_launch.dart';
import 'package:portfoliosite/widgets/all_imports.dart';
import 'package:portfoliosite/widgets/buttons.dart';

class ProjectDetails extends StatefulWidget {
  final ProjectModel data;
  const ProjectDetails({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBuilder(
                    text: widget.data.title,
                    color: Colors.white,
                    fontsize: 24,
                    fontweight: FontWeight.w500,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextBuilder(
                text: widget.data.description,
                color: Colors.white,
                fontsize: 16,
                fontweight: FontWeight.w400,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.end,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  if (widget.data.github.isNotEmpty)
                    GestureDetector(
                      onTap: () {
                        UrlLaunch.LaunchinBorwser(Url: widget.data.github);
                      },
                      child: Column(
                        children: [
                          ActionButton(
                            buttonType: ButtonType.github,
                            buttonShape: ButtonShape.circle,
                            onTAp: () {
                              UrlLaunch.LaunchinBorwser(
                                  Url: widget.data.github);
                            },
                          ),
                          const TextBuilder(
                            text: "GitHub",
                            color: Colors.blue,
                            fontweight: FontWeight.bold,
                          ),
                        ],
                      ),
                    )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextBuilder(
                text: 'Demo',
                color: Colors.white,
                fontsize: 24,
                fontweight: FontWeight.w500,
              ),
              const SizedBox(
                height: 20.0,
              ),
              widget.data.demo.isNotEmpty
                  ? Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            UrlLaunch.LaunchinBorwser(Url: widget.data.demo);
                          },
                          child: Row(
                            children: [
                              const TextBuilder(
                                text: 'CLICK HERE',
                                color: Colors.blue,
                                fontsize: 16,
                                fontweight: FontWeight.w400,
                              ),
                              const SizedBox(
                                  width:
                                      10), // Add spacing between text and icon
                              Image.asset(
                                'assets/icons/youtube.png',
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : const TextBuilder(
                      text: 'No Data',
                      color: Colors.black,
                      fontsize: 16,
                      fontweight: FontWeight.w400,
                    ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 300,
                child: widget.data.screenShot.isNotEmpty
                    ? RawScrollbar(
                        thumbColor: Colors.black45,
                        trackVisibility: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        thickness: 10,
                        controller: _scrollController,
                        child: ListView.builder(
                          itemCount: widget.data.screenShot.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          itemBuilder: (BuildContext context, int i) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: GestureDetector(
                                onTap: () {
                                  showImagePreview(
                                      context: context,
                                      image: widget.data.screenShot[i]);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: widget.data.screenShot[i],
                                    fit: BoxFit.cover,
                                    height: 600,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        Center(
                                            child: CircularProgressIndicator(
                                                value:
                                                    downloadProgress.progress)),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    : const TextBuilder(
                        text: "No Data Available",
                        color: Colors.black,
                        fontsize: 16,
                        fontweight: FontWeight.w600,
                      ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
