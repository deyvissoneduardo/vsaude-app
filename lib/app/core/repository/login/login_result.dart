class LoginResult {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  int? userId;

  LoginResult({
    accessToken,
    encryptedAccessToken,
    expireInSeconds,
    userId,
  });

  Map toJson() => {
        'accessToken': this.accessToken,
        'encryptedAccessToken': this.encryptedAccessToken,
        'expireInSeconds': this.expireInSeconds,
        'userId': this.userId
      };
}
