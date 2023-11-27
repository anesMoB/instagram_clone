
class AccountModel{
  String userName;
  int postsCount;
  int followersCount;
  int followingCount;

  AccountModel({
    required this.userName,
    this.postsCount=0,
    this.followersCount=0,
    this.followingCount=0,
    });

}