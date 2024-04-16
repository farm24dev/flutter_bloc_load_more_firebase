import 'dart:convert';

class UserModel {
  String? docId;
  DateTime? createdAt;
  String? name;
  String? avatar;
  String? id;
  bool? status;

  UserModel({
    this.createdAt,
    this.name,
    this.avatar,
    this.id,
    this.status,
  });

  factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "id": id,
        "status": status,
      };

  static List<UserModel> get dataMork => List.from(data.map((e) => UserModel.fromJson(e)).toList());
  static List<Map<String, dynamic>> data = [
    {
      "createdAt": "2024-04-15T00:04:45.203Z",
      "name": "Ed Weissnat",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1016.jpg",
      "status": false,
      "id": "1"
    },
    {
      "createdAt": "2024-04-15T07:25:55.780Z",
      "name": "Kirk Wolf V",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/71.jpg",
      "status": false,
      "id": "2"
    },
    {
      "createdAt": "2024-04-14T23:29:20.363Z",
      "name": "Lori Hoppe",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/738.jpg",
      "status": false,
      "id": "3"
    },
    {
      "createdAt": "2024-04-15T01:33:53.668Z",
      "name": "Allison Carroll",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/445.jpg",
      "status": true,
      "id": "4"
    },
    {
      "createdAt": "2024-04-14T10:30:29.391Z",
      "name": "Lee Mills I",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/298.jpg",
      "status": true,
      "id": "5"
    },
    {
      "createdAt": "2024-04-15T06:47:17.480Z",
      "name": "Darnell Koch DDS",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/644.jpg",
      "status": false,
      "id": "6"
    },
    {
      "createdAt": "2024-04-14T12:08:35.694Z",
      "name": "Dixie Torp",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1080.jpg",
      "status": false,
      "id": "7"
    },
    {
      "createdAt": "2024-04-15T00:59:36.775Z",
      "name": "Ms. Elizabeth Swaniawski III",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/262.jpg",
      "status": true,
      "id": "8"
    },
    {
      "createdAt": "2024-04-14T22:53:09.069Z",
      "name": "Dustin Moen",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/706.jpg",
      "status": true,
      "id": "9"
    },
    {
      "createdAt": "2024-04-15T06:24:24.344Z",
      "name": "Don Kerluke III",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/425.jpg",
      "status": false,
      "id": "10"
    },
    {
      "createdAt": "2024-04-15T03:39:40.693Z",
      "name": "Edgar Connelly",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/246.jpg",
      "status": false,
      "id": "11"
    },
    {
      "createdAt": "2024-04-14T15:10:36.057Z",
      "name": "Melody Weber",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/252.jpg",
      "status": true,
      "id": "12"
    },
    {
      "createdAt": "2024-04-14T14:10:05.662Z",
      "name": "Kristin Kautzer Jr.",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1084.jpg",
      "status": true,
      "id": "13"
    },
    {
      "createdAt": "2024-04-15T00:16:27.639Z",
      "name": "Margie Lind",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1001.jpg",
      "status": false,
      "id": "14"
    },
    {
      "createdAt": "2024-04-14T20:07:37.602Z",
      "name": "Mr. Nichole Daugherty",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/590.jpg",
      "status": false,
      "id": "15"
    },
    {
      "createdAt": "2024-04-14T10:00:30.816Z",
      "name": "Drew Murazik",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/64.jpg",
      "status": true,
      "id": "16"
    },
    {
      "createdAt": "2024-04-14T16:25:20.717Z",
      "name": "Gary Skiles DVM",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/587.jpg",
      "status": false,
      "id": "17"
    },
    {
      "createdAt": "2024-04-14T15:32:11.465Z",
      "name": "Dawn Crooks",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/517.jpg",
      "status": false,
      "id": "18"
    },
    {
      "createdAt": "2024-04-14T19:56:36.465Z",
      "name": "Ellis Smitham Sr.",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/908.jpg",
      "status": false,
      "id": "19"
    },
    {
      "createdAt": "2024-04-14T10:54:19.356Z",
      "name": "Rosalie Marvin",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/547.jpg",
      "status": true,
      "id": "20"
    },
    {
      "createdAt": "2024-04-14T12:36:18.970Z",
      "name": "Marilyn Miller IV",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1128.jpg",
      "status": true,
      "id": "21"
    },
    {
      "createdAt": "2024-04-14T12:43:21.943Z",
      "name": "Kevin Gottlieb",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/454.jpg",
      "status": false,
      "id": "22"
    },
    {
      "createdAt": "2024-04-14T11:26:03.576Z",
      "name": "Ms. Nancy Rowe",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1086.jpg",
      "status": false,
      "id": "23"
    },
    {
      "createdAt": "2024-04-14T12:10:59.441Z",
      "name": "Kristen Herman",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/660.jpg",
      "status": true,
      "id": "24"
    },
    {
      "createdAt": "2024-04-14T14:48:02.922Z",
      "name": "Joey Bahringer",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1176.jpg",
      "status": false,
      "id": "25"
    },
    {
      "createdAt": "2024-04-14T20:58:23.457Z",
      "name": "Vickie Strosin",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/531.jpg",
      "status": true,
      "id": "26"
    },
    {
      "createdAt": "2024-04-14T16:00:35.324Z",
      "name": "Marcella Windler",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/375.jpg",
      "status": true,
      "id": "27"
    },
    {
      "createdAt": "2024-04-14T11:44:33.076Z",
      "name": "Maxine Hessel",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/328.jpg",
      "status": false,
      "id": "28"
    },
    {
      "createdAt": "2024-04-14T12:07:59.238Z",
      "name": "Iris Abshire",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/441.jpg",
      "status": false,
      "id": "29"
    },
    {
      "createdAt": "2024-04-14T20:55:30.105Z",
      "name": "Mr. Nelson Gibson",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/624.jpg",
      "status": true,
      "id": "30"
    },
    {
      "createdAt": "2024-04-14T22:13:37.193Z",
      "name": "Ernest Schinner",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/756.jpg",
      "status": true,
      "id": "31"
    },
    {
      "createdAt": "2024-04-15T00:16:14.728Z",
      "name": "Ted Muller",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1235.jpg",
      "status": true,
      "id": "32"
    },
    {
      "createdAt": "2024-04-15T07:50:24.956Z",
      "name": "Jody Cremin",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/725.jpg",
      "status": true,
      "id": "33"
    },
    {
      "createdAt": "2024-04-15T06:43:35.991Z",
      "name": "Jan Larson",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/204.jpg",
      "status": true,
      "id": "34"
    },
    {
      "createdAt": "2024-04-14T15:21:57.313Z",
      "name": "Alberta Pfeffer MD",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/687.jpg",
      "status": false,
      "id": "35"
    },
    {
      "createdAt": "2024-04-14T08:49:38.357Z",
      "name": "Mr. Lois Weissnat",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/193.jpg",
      "status": false,
      "id": "36"
    },
    {
      "createdAt": "2024-04-14T22:55:28.792Z",
      "name": "Mildred Cole",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/574.jpg",
      "status": true,
      "id": "37"
    },
    {
      "createdAt": "2024-04-15T02:25:05.440Z",
      "name": "Eileen Mohr",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/591.jpg",
      "status": false,
      "id": "38"
    },
    {
      "createdAt": "2024-04-14T10:05:52.004Z",
      "name": "Dr. Bobby Gleason",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/244.jpg",
      "status": true,
      "id": "39"
    },
    {
      "createdAt": "2024-04-14T09:00:00.535Z",
      "name": "Joshua Miller",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/394.jpg",
      "status": true,
      "id": "40"
    },
    {
      "createdAt": "2024-04-15T04:56:05.717Z",
      "name": "Marvin Champlin",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/634.jpg",
      "status": true,
      "id": "41"
    },
    {
      "createdAt": "2024-04-14T14:59:31.035Z",
      "name": "Eugene Bogisich",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1095.jpg",
      "status": false,
      "id": "42"
    },
    {
      "createdAt": "2024-04-14T22:28:33.100Z",
      "name": "Shane Turner",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/418.jpg",
      "status": false,
      "id": "43"
    },
    {
      "createdAt": "2024-04-14T20:54:06.945Z",
      "name": "Elena Hills",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/459.jpg",
      "status": false,
      "id": "44"
    },
    {
      "createdAt": "2024-04-14T22:49:07.816Z",
      "name": "Peter Carter",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/870.jpg",
      "status": true,
      "id": "45"
    },
    {
      "createdAt": "2024-04-15T05:32:48.725Z",
      "name": "Ian Kautzer",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/128.jpg",
      "status": true,
      "id": "46"
    },
    {
      "createdAt": "2024-04-15T04:06:07.814Z",
      "name": "Miss Micheal Stroman",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/912.jpg",
      "status": false,
      "id": "47"
    },
    {
      "createdAt": "2024-04-14T11:53:35.882Z",
      "name": "Louis Pagac",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/306.jpg",
      "status": false,
      "id": "48"
    },
    {
      "createdAt": "2024-04-14T09:07:56.796Z",
      "name": "Thomas Sporer",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/177.jpg",
      "status": false,
      "id": "49"
    },
    {
      "createdAt": "2024-04-14T19:32:29.113Z",
      "name": "Norman Trantow",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/970.jpg",
      "status": false,
      "id": "50"
    },
    {
      "createdAt": "2024-04-14T12:44:08.078Z",
      "name": "Kelli Gleason",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/358.jpg",
      "status": false,
      "id": "51"
    },
    {
      "createdAt": "2024-04-14T14:26:19.921Z",
      "name": "Freda Adams DVM",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/23.jpg",
      "status": false,
      "id": "52"
    },
    {
      "createdAt": "2024-04-14T18:38:22.793Z",
      "name": "Connie Schowalter II",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/27.jpg",
      "status": true,
      "id": "53"
    },
    {
      "createdAt": "2024-04-14T17:50:56.547Z",
      "name": "Hugo Dooley",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/166.jpg",
      "status": false,
      "id": "54"
    },
    {
      "createdAt": "2024-04-14T14:53:29.076Z",
      "name": "Shawn Friesen",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1237.jpg",
      "status": true,
      "id": "55"
    },
    {
      "createdAt": "2024-04-14T11:57:14.119Z",
      "name": "Kelley Cartwright",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/61.jpg",
      "status": true,
      "id": "56"
    },
    {
      "createdAt": "2024-04-15T06:30:37.247Z",
      "name": "Amelia Hoeger",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/814.jpg",
      "status": false,
      "id": "57"
    },
    {
      "createdAt": "2024-04-14T08:31:41.994Z",
      "name": "Forrest Renner",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/124.jpg",
      "status": true,
      "id": "58"
    },
    {
      "createdAt": "2024-04-14T18:32:00.823Z",
      "name": "Horace Keebler",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/552.jpg",
      "status": true,
      "id": "59"
    },
    {
      "createdAt": "2024-04-15T07:18:42.294Z",
      "name": "Owen Bauch",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/312.jpg",
      "status": false,
      "id": "60"
    },
    {
      "createdAt": "2024-04-14T16:01:32.847Z",
      "name": "Kathleen Carter",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/595.jpg",
      "status": false,
      "id": "61"
    },
    {
      "createdAt": "2024-04-14T17:12:52.118Z",
      "name": "Mr. Myra Feeney",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/619.jpg",
      "status": false,
      "id": "62"
    },
    {
      "createdAt": "2024-04-14T10:46:03.755Z",
      "name": "Courtney Haley",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/19.jpg",
      "status": true,
      "id": "63"
    },
    {
      "createdAt": "2024-04-15T05:35:00.642Z",
      "name": "Camille Maggio",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/484.jpg",
      "status": false,
      "id": "64"
    },
    {
      "createdAt": "2024-04-14T18:18:12.089Z",
      "name": "Mrs. Brendan Walker",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/551.jpg",
      "status": true,
      "id": "65"
    },
    {
      "createdAt": "2024-04-15T05:03:11.751Z",
      "name": "Beth Feest PhD",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/827.jpg",
      "status": false,
      "id": "66"
    },
    {
      "createdAt": "2024-04-15T02:47:35.096Z",
      "name": "Rudy Welch",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/783.jpg",
      "status": false,
      "id": "67"
    }
  ];
}
