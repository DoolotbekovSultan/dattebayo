// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debut_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DebutModelAdapter extends TypeAdapter<DebutModel> {
  @override
  final int typeId = 9;

  @override
  DebutModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DebutModel(
      manga: fields[0] as String?,
      anime: fields[1] as String?,
      novel: fields[2] as String?,
      movie: fields[3] as String?,
      game: fields[4] as String?,
      ova: fields[5] as String?,
      appearsIn: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DebutModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.manga)
      ..writeByte(1)
      ..write(obj.anime)
      ..writeByte(2)
      ..write(obj.novel)
      ..writeByte(3)
      ..write(obj.movie)
      ..writeByte(4)
      ..write(obj.game)
      ..writeByte(5)
      ..write(obj.ova)
      ..writeByte(6)
      ..write(obj.appearsIn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebutModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DebutModel _$DebutModelFromJson(Map<String, dynamic> json) => DebutModel(
      manga: json['manga'] as String?,
      anime: json['anime'] as String?,
      novel: json['novel'] as String?,
      movie: json['movie'] as String?,
      game: json['game'] as String?,
      ova: json['ova'] as String?,
      appearsIn: json['appearsIn'] as String?,
    );

Map<String, dynamic> _$DebutModelToJson(DebutModel instance) =>
    <String, dynamic>{
      'manga': instance.manga,
      'anime': instance.anime,
      'novel': instance.novel,
      'movie': instance.movie,
      'game': instance.game,
      'ova': instance.ova,
      'appearsIn': instance.appearsIn,
    };
