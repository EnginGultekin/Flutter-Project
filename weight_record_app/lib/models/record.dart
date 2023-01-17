import 'package:freezed_annotation/freezed_annotation.dart';

// Bu iki part kısmını ekledik ve terminale 'flutter pub run build_runner build'  bu iki satırı
// iki yeni dosya olarak oluşturmasını sağlıyoruz içi dolu şekilde ve oluşan bu iki dosyada bir değişiklik yapmamalıyız
part 'record.freezed.dart';
part 'record.g.dart';


/// alttaki @freezed  ve with _$Record kısımlarını eklemeliyiz
@freezed
class Record with _$Record {

  /// Factory yapıcıdır Record is sınıftır ve aşağıdaki gibi constructura ihtiyac duymadan bu şekilde tanımlanır
  factory Record({required int weight, required DateTime datTime, String? note, String? photoUrl}) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}

// class Record{
//
//   final int weight;
//   final DateTime datTime;
//   final String? note;
//   final String? photoUrl;
//
//   Record({required this.weight, required   this.datTime, this.note, this.photoUrl});
// }


/// Paket kurulumları
/// NoTe: aşağıdaki gibi paketleri ekledik
///
/// dependencies:
/// freezed_annotation:
///
///
///dev_dependencies:
///   build_runner:
///   freezed:
///   json_serializable: