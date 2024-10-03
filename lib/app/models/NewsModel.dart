class NewsModel {
  final int id;
  final String title;
  final String content;
  final List<String> imageLink;
  final String author;
  final String datetime;
  NewsModel(this.id, this.title, this.content, this.imageLink, this.author,
      this.datetime);
}

final newsList = List.filled(
  5,
  NewsModel(
      1,
      'Title',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pulvinar, nisl eu pharetra commodo, nunc diam tempor diam, in volutpat leo ipsum non tortor. Curabitur eget lorem varius, mattis urna ac, dictum diam. Proin sit amet tellus nisl. In pulvinar iaculis risus at sagittis. Morbi ornare turpis massa, ac facilisis elit hendrerit sed. Aliquam erat volutpat. Maecenas placerat fermentum erat, cursus egestas nulla dapibus sed. Duis pharetra libero vitae sem pulvinar rutrum. Donec dignissim congue arcu, in consequat risus venenatis ac. Ut ullamcorper massa sit amet est aliquet, at mollis turpis sollicitudin.',
      [
        'https://media.4-paws.org/d/2/5/f/d25ff020556e4b5eae747c55576f3b50886c0b90/cut%20cat%20serhio%2002-1813x1811-720x719.jpg',
        'https://www.mongabay.co.id/wp-content/uploads/2023/06/kucing-rumahan-unsplash-768x512.jpeg'
      ],
      'Admin',
      'Sel, 1 Okt 2024'),
);
