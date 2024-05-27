// import '/components/carga_producto/carga_producto_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/random_data_util.dart' as random_data;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'lista_prod_carga_model.dart';
// export 'lista_prod_carga_model.dart';

// class ListaProdCargaWidget extends StatefulWidget {
//   const ListaProdCargaWidget({super.key});

//   @override
//   State<ListaProdCargaWidget> createState() => _ListaProdCargaWidgetState();
// }

// class _ListaProdCargaWidgetState extends State<ListaProdCargaWidget> {
//   late ListaProdCargaModel _model;

//   @override
//   void setState(VoidCallback callback) {
//     super.setState(callback);
//     _model.onUpdate();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => ListaProdCargaModel());

//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }

//   @override
//   void dispose() {
//     _model.maybeDispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (context) {
//         final loaderItems = List.generate(random_data.randomInteger(0, 0),
//                 (index) => random_data.randomName(true, true))
//             .toList()
//             .take(4)
//             .toList();
//         return GridView.builder(
//           padding: EdgeInsets.zero,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10.0,
//             mainAxisSpacing: 10.0,
//             childAspectRatio: 0.79,
//           ),
//           scrollDirection: Axis.vertical,
//           itemCount: loaderItems.length,
//           itemBuilder: (context, loaderItemsIndex) {
//             final loaderItemsItem = loaderItems[loaderItemsIndex];
//             return CargaProductoWidget(
//               key: Key('Keyi8f_${loaderItemsIndex}_of_${loaderItems.length}'),
//             );
//           },
//         );
//       },
//     );
//   }
// }
