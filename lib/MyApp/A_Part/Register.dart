// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:uiproject/ResuableCode/Buttons_C.dart';
// import 'package:uiproject/ResuableCode/FormF.dart';

// class RegisterScr extends StatelessWidget {
//   static const routeName = '/signup-screens';
//   RegisterScr({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ! SCREEN PAGE
//               Container(
//                 margin: EdgeInsets.only(top: 20.0, left: 30.0),
//                 child: Text(
//                   "SignUp",
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//               ),
//               //  ! REGISTER PAGE
//               // SignUpForm()
//               RegisterOne()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// /* -------------------------------------------------------------------------- */
// /*                          // ! REGISTER PAGE LOGIC                          */
// /* -------------------------------------------------------------------------- */
// class RegisterOne extends StatelessWidget {
//   RegisterOne({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<RegisterBloc, RegisterState>(
//         listener: (context, state) {
//       // print(' register state : - ${state}');

//       // if (state is RegisterFailed) {
//       //   Scaffold.of(context).showSnackBar(
//       //     SnackBar(
//       //       content: Text("Login failed."),
//       //       backgroundColor: Colors.red,
//       //     ),
//       //   );
//       // }
//       // if (state is RegisterSucced) {
//       //   // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
//       // }
//     }, child:
//             BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
//       return SignUpForm();
//     }));
//   }
// }

// /* -------------------------------------------------------------------------- */
// /*                     // ! 2. SIGNUP FORM WITHOUT BLOC LOGIC                    */
// /* -------------------------------------------------------------------------- */
// class SignUpForm extends StatefulWidget {
//   SignUpForm({Key? key}) : super(key: key);

//   @override
//   _SignUpFormState createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   final _form = GlobalKey<FormState>();
//   final phoneController = TextEditingController();
//   final passwordController = TextEditingController();
//   final fullnameController = TextEditingController();
//   final emailController = TextEditingController();

//   /* -------------------------------------------------------------------------- */
//   /*                      //  !SUBMIT MEHTOD FOR VALIDATION                     */
//   /* -------------------------------------------------------------------------- */

//   _registerNow() async {
//     var isvalid = _form.currentState!.validate();
//     if (!isvalid) {
//       return;
//     }
//     _form.currentState!.save();
//     var isregis = await BlocProvider.of<RegisterBloc>(context)
//       ..add(SignUpButtonPressed(
//           phone: phoneController.text,
//           password: passwordController.text,
//           email: emailController.text,
//           fullname: fullnameController.text));
//   }
// //   /* -------------------------------------------------------------------------- */
//   //                        todo END REGISTER METHOD                            */
// //   /* -------------------------------------------------------------------------- */

//   @override
//   Widget build(BuildContext context) {
//     /* -------------------------------------------------------------------------- */
//     /*                       //  ! FORM VALIDATION PROVIDER                       */
//     /* -------------------------------------------------------------------------- */
//     final formvalid = Provider.of<AllFormValdation>(context);
//     return Padding(
//       padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 30.0),
//       child: Form(
//         key: _form,
//         child: Column(children: [
//           /* -------------------------------------------------------------------------- */
//           /*                                 FORM FIELD                                 */
//           /* -------------------------------------------------------------------------- */

//           // NameEdit text
//           FieldF(
//               hintText: 'Name',
//               inputType: TextInputType.name,
//               controller: fullnameController,
//               formValidator: (v) => formvalid.fullnameValidator(v)),
//           FieldF(
//             hintText: 'Mobile',
//             inputType: TextInputType.phone,
//             controller: phoneController,
//             formValidator: (v) => formvalid.mobileValidator(v),
//           ),
//           FieldF(
//             hintText: 'Email',
//             inputType: TextInputType.emailAddress,
//             controller: emailController,
//             formValidator: (v) => formvalid.emailValidator(v),
//           ),
//           FieldF(
//               obscureTxt: true,
//               hintText: 'Password',
//               controller: passwordController,
//               formValidator: (v) => formvalid.passwordValidator(v),
//               inputType: TextInputType.visiblePassword),

//           /* -------------------------------------------------------------------------- */
//           /*                             // END  FORM FIELD                            */
//           /* -------------------------------------------------------------------------- */

//           /* -------------------------------------------------------------------------- */
//           /*                                SUBMIT BUTTON   Start                             */
//           /* -------------------------------------------------------------------------- */

//           Padding(
//             padding: EdgeInsets.only(top: 25.0, bottom: 0.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 SizedBox(
//                     height: 60,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Center(
//                           child: state is RegisterLoading
//                               ? CupertinoActivityIndicator()
//                               : SingleBtn(
//                                   btnName: 'Signup',
//                                   submitMethod: _registerNow,
//                                 ),
//                         )
//                       ],
//                     )),
//               ],
//             ),
//           ),
//           /* -------------------------------------------------------------------------- */
//           /*                          END  SUBMIT BUTTON                              */
//           /* -------------------------------------------------------------------------- */
//           ExtraButton(btnName: 'Login', createPage: ''),
//         ]),
//       ),
//     );
//   }
// }
