
class PostModel{
  double postId;
  String userName;
  String postSoundName;
  String accountImageUrl;
  String description;
  bool isNotJustImage;
  bool isAccountVerified;
  int likesCounter;
  bool isInFavorite;
  bool isInBookMarked;

  PostModel({
    required this.postId,
    required this.userName,
    required this.accountImageUrl,
    required this.description,
    required this.isNotJustImage,
    required this.isAccountVerified,
    this.likesCounter=0,
    this.postSoundName="leorem ipsum",
    this.isInFavorite=false,
    this.isInBookMarked=false
    
    });

}