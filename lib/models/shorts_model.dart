class ShortsModel {
  final String image;
  final String title;

  ShortsModel({required this.image, required this.title});
}

List<ShortsModel> shortsModels = [
  ShortsModel(
    image:
        'https://images.unsplash.com/photo-1645551519404-ffbef68bf4be?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJlYXV0aWZ1bCUyMHBsYWNlc3xlbnwwfHwwfHx8MA%3D%3D',
    title: 'Russia',
  ),
  ShortsModel(
      image:
          'https://images.unsplash.com/photo-1604917549272-558e388753a2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJlYXV0aWZ1bCUyMHBsYWNlc3xlbnwwfHwwfHx8MA%3D%3D',
      title: 'India'),
  ShortsModel(
      image:
          'https://images.unsplash.com/photo-1711688168403-ff6e003657c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJlYXV0aWZ1bCUyMHBsYWNlc3xlbnwwfHwwfHx8MA%3D%3D',
      title: 'America'),
  ShortsModel(
    image:
        'https://images.unsplash.com/photo-1648911253744-4651a42ddc38?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YmVhdXRpZnVsJTIwcGxhY2VzfGVufDB8fDB8fHww',
    title: 'Australia',
  ),
];
