
class ReelModel{
  String userName;
  String reelTitle;
  String soundSource;
  List<int> reactionStats;
  bool isInFavorite;

  ReelModel({
    required this.userName,
    required this.reelTitle,
    required this.soundSource,
    required this.reactionStats,
    this.isInFavorite=false,
    });

}