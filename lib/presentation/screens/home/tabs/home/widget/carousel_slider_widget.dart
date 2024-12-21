// import 'package:flutter/material.dart';
//
// class CarouselSliderWidget extends StatelessWidget {
//   CarouselSliderWidget({super.key, required this.movies});
//
//   List<MovieEntity> movies;
//
//   Movie? results;
//
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider.builder(
//       itemCount: movies.length,
//       itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
//           InkWell(
//             onTap: () => Navigator.pushNamed(context, RoutesManager.movieDetails,
//                 arguments: movies[itemIndex]),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       width: 412.w,
//                       height: 294.h,
//                       color: ColorsManager.scaffoldBg,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.network(
//                             '${ConstantsManager.baseNetworkImgUrl}${movies[itemIndex]?.backdropPath}',
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                         top: 100.h,
//                         left: 20.w,
//                         child: FilmCard(
//                           results: movies[itemIndex],
//                         )),
//                     Positioned(
//                         top: 230.h,
//                         left: 180.w,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: 8.h,),
//                             Text(
//                               movies[itemIndex]?.title ?? "",
//                               style: AppStyle.textSlider,
//                             ),
//                             Text(
//                               movies[itemIndex]?.releaseDate ?? "",
//                               style: AppStyle.dateSlider,
//                             )
//                           ],
//                         )),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//       options: CarouselOptions(
//         height: 335.h,
//         autoPlay: true,
//         //enlargeCenterPage: true,
//         viewportFraction: 1.0,
//         initialPage: 0,
//       ),
//     );
//   }
// }