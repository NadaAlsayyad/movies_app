// import 'package:flutter/material.dart';
//
// class HomeView extends StatelessWidget {
//   const HomeView({super.key});
//
//   HomeViewModel viewModel = HomeViewModel(
//       newReleasesUseCase: GetNewReleasesMoviesUseCase(
//           repo: NewReleasesMoviesRepoImpl(
//               dataSource:
//                   NewReleasesMoviesDataSourceImpl(apiManager: ApiManager()))),
//       recommendedUseCase: GetRecommendedMoviesUseCase(
//           repo: RecommendedMoviesRepoImpl(
//               dataSource:
//                   RecommendedMoviesDataSourceImpl(apiManager: ApiManager()))),
//       sliderUseCase: GetSliderMoviesUseCase(
//           repo: SliderMoviesRepoImpl(
//               dataSource:
//                   SliderMoviesDataSourceImpl(apiManager: ApiManager()))));
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(top: 25.h),
//           child: Column(
//             children: [
//               BlocProvider(
//                 create: (context) => HomeViewModel(
//                     sliderUseCase: GetSliderMoviesUseCase(
//                         repo: SliderMoviesRepoImpl(
//                             dataSource: SliderMoviesDataSourceImpl(
//                                 apiManager: ApiManager()))),
//                     recommendedUseCase: null,
//                     newReleasesUseCase: null)
//                   ..getMoviesSlider(),
//                 child: BlocBuilder<HomeViewModel, BaseState>(
//                   builder: (context, state) {
//                     if (state is SuccessState) {
//                       List<MovieEntity> movies = state.data;
//                       return CarouselSliderWidget(
//                         movies: movies,
//                       );
//                     }
//                     if (state is ErrorState) {
//                       return ErrorStateWidget(
//                         error: state.error,
//                         serverError: state.serverError,
//                       );
//                     }
//                     return LoadingWidget();
//                   },
//                 ),
//               ),
//               Container(
//                 color: ColorsManager.gray2,
//                 width: double.infinity,
//                 height: 240.h,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: REdgeInsets.only(left: 15, top: 9, bottom: 8),
//                       child: Text(
//                         StringsManager.newReleases,
//                         style: AppStyle.titleListView,
//                       ),
//                     ),
//                     Container(
//                       padding: REdgeInsets.only(left: 16),
//                       height: 180.h,
//                       child: BlocProvider(
//                         create: (context) => HomeViewModel(
//                             newReleasesUseCase: GetNewReleasesMoviesUseCase(
//                                 repo: NewReleasesMoviesRepoImpl(
//                                     dataSource: NewReleasesMoviesDataSourceImpl(
//                                         apiManager: ApiManager()))),
//                             recommendedUseCase: null,
//                             sliderUseCase: null)
//                           ..getNewReleases(),
//                         child: BlocBuilder<HomeViewModel, BaseState>(
//                           builder: (context, state) {
//                             if (state is SuccessState) {
//                               List<MovieEntity> movies = state.data;
//                               return ListView.builder(
//                                 itemBuilder: (context, index) => Padding(
//                                   padding: REdgeInsets.only(right: 13),
//                                   child: FilmCard(
//                                     results: movies[index],
//                                   ),
//                                 ),
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: movies.length,
//                               );
//                             }
//                             if (state is ErrorState) {
//                               return ErrorStateWidget(
//                                 error: state.error,
//                                 serverError: state.serverError,
//                               );
//                             }
//                             return LoadingWidget();
//                           },
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               Container(
//                 color: ColorsManager.gray2,
//                 width: double.infinity,
//                 height: 290.h,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: REdgeInsets.only(left: 15, top: 9, bottom: 8),
//                       child: Text(
//                         StringsManager.recomended,
//                         style: AppStyle.titleListView,
//                       ),
//                     ),
//                     Container(
//                       padding: REdgeInsets.only(
//                         left: 16,
//                         bottom: 8,
//                       ),
//                       height: 240.h,
//                       child: BlocProvider(
//                         create: (context) => HomeViewModel(
//                             recommendedUseCase: GetRecommendedMoviesUseCase(
//                                 repo: RecommendedMoviesRepoImpl(
//                                     dataSource: RecommendedMoviesDataSourceImpl(
//                                         apiManager: ApiManager()))),
//                             sliderUseCase: null,
//                             newReleasesUseCase: null)
//                           ..getRecommended(),
//                         child: BlocBuilder<HomeViewModel, BaseState>(
//                           builder: (context, state) {
//                             if (state is SuccessState) {
//                               List<MovieEntity> movies = state.data;
//                               return ListView.builder(
//                                 itemBuilder: (context, index) => Padding(
//                                   padding: EdgeInsets.only(right: 13, top: 5.h),
//                                   child: Padding(
//                                     padding:
//                                         const EdgeInsets.symmetric(vertical: 6),
//                                     child: CardDescription(
//                                       movie: movies[index],
//                                     ),
//                                   ),
//                                 ),
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: movies.length,
//                               );
//                             }
//                             if (state is ErrorState) {
//                               return ErrorStateWidget(
//                                 error: state.error,
//                                 serverError: state.serverError,
//                               );
//                             }
//                             return LoadingWidget();
//                           },
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 40.h,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
