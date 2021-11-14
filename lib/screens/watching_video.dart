import 'package:flutter/material.dart';
import 'package:project_test/shared/component/widgets/video_widget.dart';

class watching_vedio extends StatelessWidget {
  const watching_vedio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white38,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.44 / 4,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 1.4 / 4,
                          child: Image.asset(
                            "assets/images/home_photo.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 55,
                            height: 30,
                            child: Center(
                                child: Text(
                              "13:04",
                              style: TextStyle(fontSize: 16),
                            )),
                          ),
                        ),
                      ],
                    ),
                    LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: Colors.grey[400],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white38,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6 / 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                "when i was a small never saw that"
                                " i was palyed and go to school in peace"
                                " did not see thise evil around use",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            height:
                                MediaQuery.of(context).size.height * 0.4 / 5,
                            width: MediaQuery.of(context).size.width * 3.2 / 4,
                            color: Colors.white,
                          ),
                          IconButton(
                            splashRadius: 30,
                            icon: Icon(Icons.expand_more),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '150 views .',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '15 days ago',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2 / 2,
                color: Colors.white30,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              splashRadius: 42,
                              icon: Icon(Icons.thumb_up),
                              onPressed: () {},
                              color: Colors.grey[500],
                            ),
                            Text(
                              '71k',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            IconButton(
                              splashRadius: 42,
                              icon: Icon(Icons.thumb_down),
                              onPressed: () {},
                              color: Colors.grey[500],
                            ),
                            Text(
                              '1k',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            IconButton(
                              splashRadius: 42,
                              icon: Icon(Icons.reply),
                              onPressed: () {},
                              color: Colors.grey[500],
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            IconButton(
                              splashRadius: 42,
                              onPressed: () {},
                              icon: Icon(Icons.video_call),
                              color: Colors.grey[500],
                            ),
                            Text(
                              'Create',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            IconButton(
                              splashRadius: 42,
                              onPressed: () {},
                              icon: Icon(Icons.save_alt),
                              color: Colors.grey[500],
                            ),
                            Text(
                              'Download',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            IconButton(
                              splashRadius: 42,
                              onPressed: () {},
                              icon: Icon(Icons.add_to_photos_outlined),
                              color: Colors.grey[500],
                            ),
                            Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25 / 4,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 17,
                        backgroundImage:
                            AssetImage('assets/images/profile_photo.jpeg'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hunter chanal',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '200K Subscriber',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'SUBSCRIBE',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5 / 4,
                color: Colors.white30,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            "Comments",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "33",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[400],
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            splashRadius: 30,
                            icon: Icon(Icons.expand_more),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => suggestionVideos(context),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget suggestionVideos(context) {
    return video(
      context: context,
      video_photo_url: 'assets/images/home_photo.jpeg',
      vide_name: 'HONOR 50-واخيرا مميزات وعيوب',
      channel_photo_url: 'assets/images/profile_photo.jpeg',
      channel_name: 'Abdallah Rakha عبدالله رخا ',
      views: '19k',
      publish_time: '16 hours ago',
    );
  }
}
