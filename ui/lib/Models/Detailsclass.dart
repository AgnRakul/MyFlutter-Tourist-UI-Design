class Details{
  late var image;
  late var distance;
  late var rating;
  late var place;
  // late var visitedimage1;
  // late var visitedimage2;
  // late var visitedimage3;
  Details({required this.image,this.distance,this.place,this.rating});
}
List<Details> Detailslist=[
  Details(image: 'https://images.pexels.com/photos/2607830/pexels-photo-2607830.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',distance: '3.5 km',place: 'Bondi Beach',rating: '4.9',
  ),
  Details  (image: 'https://images.pexels.com/photos/5289209/pexels-photo-5289209.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',distance: '1.5 km',place: 'Canggu',rating: '2.9'),
  Details(image: 'https://images.pexels.com/photos/5779154/pexels-photo-5779154.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',distance: '5.5 km',place: 'Hossegor',rating: '4.2'),

];
