// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class RankingDataModel with ChangeNotifier {
  String? gameFormat;
  String? playerType;
  String? name;
  int? rank;
  int? points;
  int? teamRank;
  int? teampoints;
  int? teamrating;

  RankingDataModel({
    this.gameFormat,
    this.playerType,
    this.name,
    this.rank,
    this.points,
    this.teamRank,
    this.teampoints,
    this.teamrating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gameFormat': gameFormat,
      'playerType': playerType,
      'name': name,
      'rank': rank,
      'points': points,
      'teamRank': teamRank,
      'teampoints': teampoints,
      'teamrating': teamrating,
    };
  }

  factory RankingDataModel.fromMap(Map<String, dynamic> map) {
    return RankingDataModel(
      gameFormat: map['gameFormat'] != null ? map['gameFormat'] as String : null,
      playerType: map['playerType'] != null ? map['playerType'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      rank: map['rank'] != null ? map['rank'] as int : null,
      points: map['points'] != null ? map['points'] as int : null,
      teamRank: map['teamRank'] != null ? map['teamRank'] as int : null,
      teampoints: map['teampoints'] != null ? map['teampoints'] as int : null,
      teamrating: map['teamrating'] != null ? map['teamrating'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RankingDataModel.fromJson(String source) => RankingDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
