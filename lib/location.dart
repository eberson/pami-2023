class Location {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String timezone;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.timezone
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json["name"], 
      region: json["region"], 
      country: json["country"], 
      lat: json["lat"], 
      lon: json["lon"], 
      timezone: json["tz_id"],
    );
  }
}