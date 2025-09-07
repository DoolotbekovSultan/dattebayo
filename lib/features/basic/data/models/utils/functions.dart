List<String>? listFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return [json];
  if (json is List) return json.map((e) => e.toString()).toList();

  // Для JSArray на Web
  try {
    return (json as dynamic).cast<String>().toList();
  } catch (_) {
    return null;
  }
}

String? stringFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is List && json.isNotEmpty) return json[0].toString();
  return null;
}

dynamic listToJson(List<String>? list) => list;
