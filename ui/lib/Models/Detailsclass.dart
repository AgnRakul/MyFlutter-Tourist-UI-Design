class Details {
  late var image;
  late var distance;
  late var rating;
  late var place;
  late var visited;
  late var visitedimage1;
  late var visitedimage2;
  late var visitedimage3;
  Details(
      {required this.image,
      this.distance,
      this.place,
      this.rating,
      this.visited,
      this.visitedimage1,
      this.visitedimage2,
      this.visitedimage3});
}

List<Details> detailslist = [
  Details(
    image: "Assets/Bondi.jpg",
    place: "Bondi",
    distance: "4.7km away",
    rating: "4.9",
    visited: "6+ visited",
    visitedimage1: "Assets/VisitedImage.jpeg",
    visitedimage2: "Assets/VisitedImage2.jpeg",
    visitedimage3: "Assets/VisitedImage3.jpeg",
  ),
  Details(
    image: "Assets/canggu.jpg",
    place: "Canggu",
    distance: "4.5km away",
    rating: "4.3",
    visited: "3+ visited",
    visitedimage1: "Assets/VisitedImage.jpeg",
    visitedimage2: "Assets/VisitedImage2.jpeg",
    visitedimage3: "Assets/VisitedImage3.jpeg",
  ),
  Details(
    image: "Assets/Hossegor.jpg",
    place: "Hossegor",
    distance: "3.7km away",
    rating: "4.1",
    visited: "2+ visited",
    visitedimage1: "Assets/VisitedImage.jpeg",
    visitedimage2: "Assets/VisitedImage2.jpeg",
    visitedimage3: "Assets/VisitedImage3.jpeg",
  ),
];
