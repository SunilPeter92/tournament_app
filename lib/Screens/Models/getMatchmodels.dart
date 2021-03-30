class GetMatchModel {
  List<GetMatches> getMatches;

  GetMatchModel({this.getMatches});

  GetMatchModel.fromJson(Map<String, dynamic> json) {
    if (json['get_matches'] != null) {
      getMatches = new List<GetMatches>();
      json['get_matches'].forEach((v) {
        getMatches.add(new GetMatches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getMatches != null) {
      data['get_matches'] = this.getMatches.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetMatches {
  int id;
  String gameId;
  String matchName;
  String matchUrl;
  String matchSchedule;
  String prizePool;
  String team;
  String enterFee;
  String mode;
  String map;
  String matchType;
  String totalPlayer;
  String banner;
  String prizeDescription;
  int status;

  GetMatches(
      {this.id,
        this.gameId,
        this.matchName,
        this.matchUrl,
        this.matchSchedule,
        this.prizePool,
        this.team,
        this.enterFee,
        this.mode,
        this.map,
        this.matchType,
        this.totalPlayer,
        this.banner,
        this.prizeDescription,
        this.status});

  GetMatches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gameId = json['game_id'];
    matchName = json['match_name'];
    matchUrl = json['match_url'];
    matchSchedule = json['match_schedule'];
    prizePool = json['prize_pool'];
    team = json['team'];
    enterFee = json['enter_fee'];
    mode = json['mode'];
    map = json['map'];
    matchType = json['match_type'];
    totalPlayer = json['total_player'];
    banner = json['banner'];
    prizeDescription = json['prize_description'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['game_id'] = this.gameId;
    data['match_name'] = this.matchName;
    data['match_url'] = this.matchUrl;
    data['match_schedule'] = this.matchSchedule;
    data['prize_pool'] = this.prizePool;
    data['team'] = this.team;
    data['enter_fee'] = this.enterFee;
    data['mode'] = this.mode;
    data['map'] = this.map;
    data['match_type'] = this.matchType;
    data['total_player'] = this.totalPlayer;
    data['banner'] = this.banner;
    data['prize_description'] = this.prizeDescription;
    data['status'] = this.status;
    return data;
  }
}