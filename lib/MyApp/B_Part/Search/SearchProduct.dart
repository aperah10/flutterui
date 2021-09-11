// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:secd_ecom/Fortend/CusField/Iocns_C.dart';
// import 'package:secd_ecom/Fortend/Screen/Product_Scr/Product/Product_Cat.dart';
// import 'package:secd_ecom/Fortend/Widget/Appbar/CusAppbar.dart';

// // ! 1. SEARCH PRODUCT
// class SerachScr extends StatelessWidget {
//   SerachScr({Key? key}) : super(key: key);

//   // ! PRDOUCT LOADE FOR SEARCH_DARK
//   //  ProductshowBloc prodBloc = ProductshowBloc(prodRespo: ProductDataRespo());

//   // @override
//   // void initState() {
//   //   prodBloc = BlocProvider.of<ProductshowBloc>(context);
//   //   prodBloc.add(FetchProductEvent());
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         titleName: 'Search',
//         act: [
//           IconBtn(
//             Icons.search,
//             submitMethod: () {
//               // showSearch(context: context, delegate: SearchProduct(
//               //             searchBloc:
//               //                 BlocProvider.of<SearchproductBloc>(context)));
//             },
//           )
//         ],
//       ),

//       // ! 2
//       body: SingleChildScrollView(
//         child: Container(
//           child: BlocBuilder<ProductshowBloc, ProductshowState>(
//               builder: (context, state) {
//             if (state is ProductshowInitial) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (state is ProductLoadingState) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (state is ProductLoadedState) {
//               // return buildHintsList(state.productData);
//               return ProdGridList(prodState: state.productData);
//             } else if (state is ProductErrorState) {
//               return Center(
//                 child: Text(state.message),
//               );
//             }
//             return Scaffold(body: Center(child: CircularProgressIndicator()));
//           }),
//         ),
//       ),
//     );
//   }
// }

// /* -------------------------------------------------------------------------- */
// /*                         // !SEARCH PRODUCT DELEGAGE                        */
// /* -------------------------------------------------------------------------- */
// class SearchProduct extends SearchDelegate<List> {
//   SearchproductBloc searchBloc;

//   SearchProduct({required this.searchBloc});
//   late String queryString;

//   // ! 1. build ACtions method
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconBtn(Icon(Icons.clear), submitMethod: () {
//         query = '';
//       })
//     ];
//   }

//   // ! 2. bulild Leading method
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconBtn(Icons.arrow_back_ios, submitMethod: () {
//       Navigator.pop(context);
//     });
//   }

//   // ! 3.build buildSuggestions
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Container();
//   }

//   // ! 4. buildResult 
//   @override
//   Widget buildResults(BuildContext context) {
//     queryString = query;
//     searchBloc.add(SearchProd(query: query));
//     return  
//   }
// }


// // ! SEARCH RESULT METHOD 
// class SrchResult extends StatelessWidget {
//   const SrchResult({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SearchproductBloc, SearchproductState>(
//       builder: (BuildContext context, SearchproductState state) {
//         if (state is SearchproductInitial) {
//           return Center(child: CircularProgressIndicator());
//         }
//         if (state is SearachErrorState) {
//           return Center(
//             child:const Text('Failed To Load'),
//           );
//         }
//         if (state is SearchLoadedState) {
//           if (state.productData.isEmpty) {
//             return Center(
//               child: const Text('No Results'),
//             );
//           }
//           return ProdGridList(prodState: state.productData);
//           // ListView.builder(
//           //     itemBuilder: (BuildContext context, int index) {
//           //       return Container(
//           //         child: InkWell(
//           //           onTap: () {
//           //             Navigator.push(
//           //                 context,
//           //                 MaterialPageRoute(
//           //                     builder: (context) =>
//           //                         // ! SINGLE PAGE LINK
//           //                         ItemDetailsScreen(
//           //                           prod: state.productData[index],
//           //                         )));
//           //           },
//           //           child: Column(
//           //             crossAxisAlignment: CrossAxisAlignment.start,
//           //             children: [
//           //               Container(
//           //                   height: 90,
//           //                   width: 100,
//           //                   child: Image.network(
//           //                       state.productData[index].pic ?? '')),
//           //               Text(state.productData[index].title ?? ''),
//           //             ],
//           //           ),
//           //         ),
//           //       );

//           //       //Text(state.recipes[index].title);
//           //     },
//           //     itemCount: state.productData.length);
//         }
//         return Scaffold();
//       },
//     );;
//   }
// }