class EventDetails {
  final String title;
  final String subtitle;

  EventDetails({
    required this.title,
    required this.subtitle,
  });
}

class EventModel {
  final String description;
  final String img;
  final List<EventDetails>? details;

  EventModel({
    required this.description,
    required this.img,
    this.details = const [],
  });
}