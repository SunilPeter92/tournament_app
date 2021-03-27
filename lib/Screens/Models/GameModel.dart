class Games {
  List<GetGames> getGames;

  Games({this.getGames});

  Games.fromJson(Map<String, dynamic> json) {
    if (json['get_games'] != null) {
      getGames = new List<GetGames>();
      json['get_games'].forEach((v) {
        getGames.add(new GetGames.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getGames != null) {
      data['get_games'] = this.getGames.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetGames {
  int id;
  String gameName;
  String gamePackage;
  String gameImg;
  String gameLogo;
  int status;

  GetGames(
      {this.id,
        this.gameName,
        this.gamePackage,
        this.gameImg,
        this.gameLogo,
        this.status});

  GetGames.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gameName = json['game_name'];
    gamePackage = json['game_package'];
    gameImg = json['game_img'];
    gameLogo = json['game_logo'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['game_name'] = this.gameName;
    data['game_package'] = this.gamePackage;
    data['game_img'] = this.gameImg;
    data['game_logo'] = this.gameLogo;
    data['status'] = this.status;
    return data;
  }
}