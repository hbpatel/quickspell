import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "gamesPlayed" field.
  int? _gamesPlayed;
  int get gamesPlayed => _gamesPlayed ?? 0;
  bool hasGamesPlayed() => _gamesPlayed != null;

  // "wins" field.
  int? _wins;
  int get wins => _wins ?? 0;
  bool hasWins() => _wins != null;

  // "winRate" field.
  double? _winRate;
  double get winRate => _winRate ?? 0.0;
  bool hasWinRate() => _winRate != null;

  // "highestWordScore" field.
  int? _highestWordScore;
  int get highestWordScore => _highestWordScore ?? 0;
  bool hasHighestWordScore() => _highestWordScore != null;

  // "pointsScored" field.
  int? _pointsScored;
  int get pointsScored => _pointsScored ?? 0;
  bool hasPointsScored() => _pointsScored != null;

  // "wordsMade" field.
  int? _wordsMade;
  int get wordsMade => _wordsMade ?? 0;
  bool hasWordsMade() => _wordsMade != null;

  // "streak" field.
  int? _streak;
  int get streak => _streak ?? 0;
  bool hasStreak() => _streak != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  bool hasCoins() => _coins != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  bool hasFlag() => _flag != null;

  // "lastPlayed" field.
  String? _lastPlayed;
  String get lastPlayed => _lastPlayed ?? '';
  bool hasLastPlayed() => _lastPlayed != null;

  // "lastOnline" field.
  String? _lastOnline;
  String get lastOnline => _lastOnline ?? '';
  bool hasLastOnline() => _lastOnline != null;

  // "challengeRequest" field.
  bool? _challengeRequest;
  bool get challengeRequest => _challengeRequest ?? false;
  bool hasChallengeRequest() => _challengeRequest != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _username = snapshotData['username'] as String?;
    _gamesPlayed = castToType<int>(snapshotData['gamesPlayed']);
    _wins = castToType<int>(snapshotData['wins']);
    _winRate = castToType<double>(snapshotData['winRate']);
    _highestWordScore = castToType<int>(snapshotData['highestWordScore']);
    _pointsScored = castToType<int>(snapshotData['pointsScored']);
    _wordsMade = castToType<int>(snapshotData['wordsMade']);
    _streak = castToType<int>(snapshotData['streak']);
    _coins = castToType<int>(snapshotData['coins']);
    _country = snapshotData['country'] as String?;
    _flag = snapshotData['flag'] as String?;
    _lastPlayed = snapshotData['lastPlayed'] as String?;
    _lastOnline = snapshotData['lastOnline'] as String?;
    _challengeRequest = snapshotData['challengeRequest'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? username,
  int? gamesPlayed,
  int? wins,
  double? winRate,
  int? highestWordScore,
  int? pointsScored,
  int? wordsMade,
  int? streak,
  int? coins,
  String? country,
  String? flag,
  String? lastPlayed,
  String? lastOnline,
  bool? challengeRequest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'username': username,
      'gamesPlayed': gamesPlayed,
      'wins': wins,
      'winRate': winRate,
      'highestWordScore': highestWordScore,
      'pointsScored': pointsScored,
      'wordsMade': wordsMade,
      'streak': streak,
      'coins': coins,
      'country': country,
      'flag': flag,
      'lastPlayed': lastPlayed,
      'lastOnline': lastOnline,
      'challengeRequest': challengeRequest,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.username == e2?.username &&
        e1?.gamesPlayed == e2?.gamesPlayed &&
        e1?.wins == e2?.wins &&
        e1?.winRate == e2?.winRate &&
        e1?.highestWordScore == e2?.highestWordScore &&
        e1?.pointsScored == e2?.pointsScored &&
        e1?.wordsMade == e2?.wordsMade &&
        e1?.streak == e2?.streak &&
        e1?.coins == e2?.coins &&
        e1?.country == e2?.country &&
        e1?.flag == e2?.flag &&
        e1?.lastPlayed == e2?.lastPlayed &&
        e1?.lastOnline == e2?.lastOnline &&
        e1?.challengeRequest == e2?.challengeRequest;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.username,
        e?.gamesPlayed,
        e?.wins,
        e?.winRate,
        e?.highestWordScore,
        e?.pointsScored,
        e?.wordsMade,
        e?.streak,
        e?.coins,
        e?.country,
        e?.flag,
        e?.lastPlayed,
        e?.lastOnline,
        e?.challengeRequest
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
