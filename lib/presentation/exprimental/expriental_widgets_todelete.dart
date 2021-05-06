
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with AfterLayoutMixin<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void afterFirstLayout(BuildContext context) {
//     context.read(usersprovider).getusers();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: RefreshIndicator(
//         displacement: 100,
//         onRefresh: () async {
//           context.read(usersprovider).getusers();
//         },
//         child: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               title: Text('hello there'),
//             ),
//             Consumer(
//               builder: (context, watch, child) {
//                 final controller = watch(usersprovider);

//                 return controller.loading
//                     ? CircularProgressIndicator()
//                     : SliverList(
//                         delegate: SliverChildBuilderDelegate((context, index) {
//                         var user = controller.users[index];
//                         return ListTile(
//                             onTap: () {
//                               showDialog(
//                                 context: context,
//                                 builder: (context) {
//                                   return SimpleDialog(
//                                     title: Text('User details'),
//                                     contentPadding: EdgeInsets.all(10),
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Text('First Name'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Text(user.firstName)
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('Last Name'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Text(user.lastName),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('other Names'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Text(user.otherNames),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('SurName'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Text(user.surname),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('email'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Text(user.email),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('date of birth'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Text(user.dateOfBirth),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('is Phone verified'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Checkbox(
//                                               value: user.isPhoneVerified,
//                                               onChanged: (v) {})
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text('is Email verified'),
//                                           SizedBox(
//                                             width: 15,
//                                           ),
//                                           Checkbox(
//                                               value: user.isEmailVerified,
//                                               onChanged: (v) {})
//                                         ],
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               );
//                             },
//                             leading: CircleAvatar(
//                               foregroundImage: NetworkImage(user.avatarUrl),
//                               radius: 50,
//                             ),
//                             subtitle: Text(user.firstName),
//                             title: Text(
//                               user.email,
//                             )).paddingSymmetric(horizontal: 10);
//                       }, childCount: controller.users.length));
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
