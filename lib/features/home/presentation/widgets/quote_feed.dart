import 'package:flutter/material.dart';
import 'package:quotly/features/home/presentation/widgets/post_card.dart';

class QuoteFeed extends StatelessWidget {
  const QuoteFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          PostCard(
            isVerifiedProfile: true,
            userProfileImage:
                "https://i.pinimg.com/736x/be/f7/b3/bef7b3711e786dfa98d53a5e5d4f576f.jpg",
            userName: "Leonel Messi",
            postComments: "1M",
            postLikes: "10M",
            postShares: "345k",
            postTime: "3h",
            profilePressed: () {},
            postStatus:
                "I don't get it that, \"How life is againist you? When you are the life!\"",
            postImage:
                "https://s.france24.com/media/display/451ed2b8-eed6-11ea-afdd-005056bf87d6/w:1280/p:16x9/messi-1805.jpg",
            onLikePressed: () {},
            onCommentPressed: () {},
            onSharePressed: () {},
            onDotPressed: () {},
          ),
          Divider(),
          PostCard(
            isVerifiedProfile: true,
            userProfileImage:
                "https://i.pinimg.com/736x/be/f7/b3/bef7b3711e786dfa98d53a5e5d4f576f.jpg",
            userName: "Leonel Messi",
            postComments: "27M",
            postLikes: "50M",
            postShares: "1M",
            postTime: "2d",
            profilePressed: () {},
            postStatus:
                "I don't get it that, \"How life is againist you? When you are the life!\"",
            postImage:
                "https://upload.wikimedia.org/wikipedia/commons/1/18/Lionel-Messi-Argentina-2022-FIFA-World-Cup_sharpness.jpg?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=original",
            onLikePressed: () {},
            onCommentPressed: () {},
            onSharePressed: () {},
            onDotPressed: () {},
          ),
        ],
      ),
    );
  }
}
