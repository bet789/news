// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// class Cateogory extends StatefulWidget {
//   final setcategory;
//   Cateogory(this.setcategory);
//   @override
//   _CateogoryState createState() => _CateogoryState(this.setcategory);
// }

// class _CateogoryState extends State<Cateogory> {
//   var setcategory;
//   _CateogoryState(this.setcategory);
//   spin() {
//     return SpinKitRotatingPlain(color: Colors.red);
//   }

//   var data;
//   var url =
//       "https://newsapi.org/v2/top-headlines?country=in&apiKey=2d876e297540454b908c7258890cb059";
//   Future getjsondata() async {
//     var response = await http.get(Uri.parse(url));
//     if (mounted) {
//       setState(() {
//         var convertdata = json.decode(response.body);
//         data = convertdata;
//         print(data);
//       });
//     }
//   }

//   @override
//   void initState() {
//     // getjsondata();
//     super.initState();
//   }

//   Widget space(img, txt, categoryName) {
//     return GestureDetector(
//       onTap: () => setcategory(categoryName),
//       child: Stack(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(10),
//             height: 170,
//             width: double.infinity,
//             child: Image.asset(
//               img,
//               fit: BoxFit.fill,
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 140, left: 14),
//             height: 70,
//             width: MediaQuery.of(context).size.width * 0.99,
//             padding: const EdgeInsets.only(left: 10.0),
//             child: Text(
//               txt,
//               style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         body: CustomScrollView(
//       slivers: <Widget>[
//         SliverAppBar(
//           backgroundColor: Theme.of(context).brightness == Brightness.dark
//               ? Color(0xFF282828)
//               : Colors.white,
//           automaticallyImplyLeading: false,
//           title: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//               color: Colors.white,
//             ),
//             height: size.height * .04,
//             width: size.width * .35,
//             child: ClipRRect(
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//               // child: Image.asset(
//               //   "assets/images/LOGO.png",
//               //   fit: BoxFit.fill,
//               // ),
//             ),
//           ),
//           actions: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(right: 15.0),
//               child: Icon(
//                 Icons.search,
//               ),
//             ),
//           ],
//         ),
//         SliverList(
//           delegate: SliverChildListDelegate(<Widget>[
//             Column(
//               children: <Widget>[
//                 space("assets/images/world.jpeg", "Tất cả tin", ""),
//                 space(
//                     "assets/images/bussness.jpeg", "Tin mới nhất", "business"),
//                 space("assets/images/sports.jpeg", "Thể thao trong nước",
//                     "sports"),
//                 space("assets/images/entertainment.jpeg", "Thể thao quốc tế",
//                     "entertainment"),
//                 // space("assets/images/technology.jpeg", "Technology",
//                 //     "technology"),
//                 // space("assets/images/health.jpeg", "Health", "health"),
//               ],
//             ),
//           ]),
//         ),
//       ],
//     ));
//   }
// }

import 'package:flutter/material.dart';
//import 'package:validate/validate.dart';  //for validation

// void main() {
//   runApp(new MyApp());
// }

class AddNews extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppScreenMode();
  }
}

class MyData {
  String name = '';
  String phone = '';
  String email = '';
  String age = '';
}

class MyAppScreenMode extends State<AddNews> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Steppers'),
          ),
          body: new StepperBody(),
        ));
  }
}

class StepperBody extends StatefulWidget {
  @override
  _StepperBodyState createState() => new _StepperBodyState();
}

class _StepperBodyState extends State<StepperBody> {
  int currStep = 0;
  static var _focusNode = new FocusNode();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  static MyData data = new MyData();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  List<Step> steps = [
    new Step(
        title: const Text('Title'),
        //subtitle: const Text('Enter your name'),
        isActive: true,
        //state: StepState.error,
        state: StepState.indexed,
        content: new TextFormField(
          focusNode: _focusNode,
          keyboardType: TextInputType.text,
          autocorrect: false,
          onSaved: (String value) {
            data.name = value;
          },
          maxLines: 1,
          //initialValue: 'Aseem Wangoo',
          // ignore: missing_return
          validator: (value) {
            if (value.isEmpty || value.length < 1) {
              return 'Nhập Title';
            }
          },
          decoration: new InputDecoration(
              labelText: 'title',
              hintText: 'Title',
              //filled: true,
              icon: const Icon(Icons.text_fields),
              labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
        )),
    new Step(
        title: const Text('Category'),
        //subtitle: const Text('Subtitle'),
        isActive: true,
        //state: StepState.editing,
        state: StepState.indexed,
        content: new TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          validator: (value) {
            if (value.isEmpty || value.length < 1) {
              return 'Nhập Category';
            }
          },
          onSaved: (String value) {
            data.phone = value;
          },
          maxLines: 1,
          decoration: new InputDecoration(
              labelText: 'Nhập Category',
              hintText: 'Nhập Category',
              icon: const Icon(Icons.text_fields),
              labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
        )),
    new Step(
        title: const Text('Image Link'),
        // subtitle: const Text('Subtitle'),
        isActive: true,
        state: StepState.indexed,
        // state: StepState.disabled,
        content: new TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          // ignore: missing_return
          validator: (value) {
            if (value.isEmpty || value.length < 1) {
              return 'Nhập Image Link';
            }
          },
          onSaved: (String value) {
            data.email = value;
          },
          maxLines: 1,
          decoration: new InputDecoration(
              labelText: 'Nhập Image Link',
              hintText: 'Nhập Image Link',
              icon: const Icon(Icons.image_aspect_ratio_rounded),
              labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
        )),
    new Step(
        title: const Text('Content'),
        // subtitle: const Text('Subtitle'),
        isActive: true,
        state: StepState.indexed,
        content: new TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          validator: (value) {
            if (value.isEmpty || value.length > 1) {
              return 'Nhập Content';
            }
          },
          maxLines: 1,
          onSaved: (String value) {
            data.age = value;
          },
          decoration: new InputDecoration(
              labelText: 'Nhập Content',
              hintText: 'Nhập Content',
              icon: const Icon(Icons.content_copy_rounded),
              labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
        )),
    // new Step(
    //     title: const Text('Fifth Step'),
    //     subtitle: const Text('Subtitle'),
    //     isActive: true,
    //     state: StepState.complete,
    //     content: const Text('Enjoy Step Fifth'))
  ];

  @override
  Widget build(BuildContext context) {
    void showSnackBarMessage(String message,
        [MaterialColor color = Colors.red]) {
      Scaffold.of(context)
          .showSnackBar(new SnackBar(content: new Text(message)));
    }

    void _submitDetails() {
      final FormState formState = _formKey.currentState;

      if (!formState.validate()) {
        showSnackBarMessage('Please enter correct data');
      } else {
        formState.save();
        print("Name: ${data.name}");
        print("Phone: ${data.phone}");
        print("Email: ${data.email}");
        print("Age: ${data.age}");

        showDialog(
            builder: (context) => new AlertDialog(
                  title: new Text("Details"),
                  //content: new Text("Hello World"),
                  content: new SingleChildScrollView(
                    child: new ListBody(
                      children: <Widget>[
                        new Text("author : " + data.name),
                        new Text("category : " + data.phone),
                        new Text("Email : " + data.email),
                        new Text("Age : " + data.age),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
            context: context);
      }
    }

    return new Container(
        child: new Form(
      key: _formKey,
      child: new ListView(children: <Widget>[
        new Stepper(
          steps: steps,
          type: StepperType.vertical,
          currentStep: this.currStep,
          onStepContinue: () {
            setState(() {
              if (currStep < steps.length - 1) {
                currStep = currStep + 1;
              } else {
                currStep = 0;
              }
              // else {
              // Scaffold
              //     .of(context)
              //     .showSnackBar(new SnackBar(content: new Text('$currStep')));

              // if (currStep == 1) {
              //   print('First Step');
              //   print('object' + FocusScope.of(context).toStringDeep());
              // }

              // }
            });
          },
          onStepCancel: () {
            setState(() {
              if (currStep > 0) {
                currStep = currStep - 1;
              } else {
                currStep = 0;
              }
            });
          },
          onStepTapped: (step) {
            setState(() {
              currStep = step;
            });
          },
        ),
        new RaisedButton(
          child: new Text(
            'Lưu lại',
            style: new TextStyle(color: Colors.white),
          ),
          onPressed: _submitDetails,
          color: Colors.blue,
        ),
      ]),
    ));
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:intl/intl.dart';

// // void main() => runApp(MyApp());

// class AddNews extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: TextTheme(),
//         primarySwatch: Colors.pink,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State {
//   var data;
//   bool autoValidate = true;
//   bool readOnly = false;
//   bool showSegmentedControl = true;
//   final _fbKey = GlobalKey<FormBuilderState>();
//   @override
//   Widget build(BuildContext context) {
//     var body1;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Form Validation"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               FormBuilder(
//                 key: _fbKey,
//                 initialValue: {
//                   'date': DateTime.now(),
//                   'accept_terms': false,
//                 },
//                 autovalidateMode: AutovalidateMode.always,
//                 child: Column(
//                   children: [
//                     FormBuilderTextField(
//                       name: 'text',
//                       style: Theme.of(context).textTheme.bodyText2,
//                       validator: FormBuilderValidators.compose(
//                           [FormBuilderValidators.required(context)]),
//                       decoration: InputDecoration(labelText: "Full Name"),
//                     ),
//                     FormBuilderDateTimePicker(
//                       name: "date",
//                       style: Theme.of(context).textTheme.bodyText2,
//                       inputType: InputType.date,
//                       validator: FormBuilderValidators.compose(
//                           [FormBuilderValidators.required(context)]),
//                       format: DateFormat("dd-MM-yyyy"),
//                       decoration: InputDecoration(labelText: "Date of Birth"),
//                     ),
//                     FormBuilderDropdown(
//                       name: "gender",
//                       style: Theme.of(context).textTheme.bodyText2,
//                       decoration: InputDecoration(labelText: "Gender"),
//                       // initialValue: 'Male',
//                       hint: Text('Select Gender'),
//                       validator: FormBuilderValidators.compose(
//                           [FormBuilderValidators.required(context)]),
//                       items: ['Male', 'Female', 'Other']
//                           .map((gender) => DropdownMenuItem(
//                               value: gender, child: Text("$gender")))
//                           .toList(),
//                     ),
//                     FormBuilderTextField(
//                       name: "age",
//                       style: Theme.of(context).textTheme.bodyText2,
//                       decoration: InputDecoration(labelText: "Age"),
//                       keyboardType: TextInputType.number,
//                       validator: FormBuilderValidators.compose([
//                         FormBuilderValidators.numeric(context),
//                         FormBuilderValidators.max(context, 70),
//                       ]),
//                     ),
//                     FormBuilderSlider(
//                       name: "slider",
//                       validator: FormBuilderValidators.compose([
//                         FormBuilderValidators.min(context, 6),
//                       ]),
//                       min: 0.0,
//                       max: 20.0,
//                       initialValue: 1.0,
//                       divisions: 20,
//                       decoration: InputDecoration(
//                           labelStyle: Theme.of(context).textTheme.bodyText2,
//                           labelText: "Income in Lacs"),
//                     ),
//                     FormBuilderSegmentedControl(
//                       decoration: InputDecoration(
//                         labelText: "No of Children",
//                         labelStyle: Theme.of(context).textTheme.bodyText2,
//                       ),
//                       name: "movie_rating",
//                       options: List.generate(5, (i) => i + 1)
//                           .map(
//                               (number) => FormBuilderFieldOption(value: number))
//                           .toList(),
//                     ),
//                     FormBuilderTouchSpin(
//                       decoration: InputDecoration(labelText: 'Stepper'),
//                       name: 'stepper',
//                       initialValue: 10,
//                       step: 1,
//                       iconSize: 48.0,
//                       addIcon: Icon(Icons.arrow_right),
//                       subtractIcon: Icon(Icons.arrow_left),
//                     ),
//                     /*   FormBuilderStepper(
//                       decoration: InputDecoration(labelText: "No of Houses",labelStyle: Theme.of(context).textTheme.body1,),
//                       attribute: "stepper",
//                       initialValue: 10,
//                       step: 1,
//                     ),*/

//                     FormBuilderCheckboxGroup(
//                       decoration: InputDecoration(
//                         labelText: "Known Langugaes",
//                         labelStyle: Theme.of(context).textTheme.bodyText2,
//                       ),
//                       name: "languages",
//                       initialValue: ["English"],
//                       options: [
//                         FormBuilderFieldOption(value: "English"),
//                         FormBuilderFieldOption(value: "Hindi"),
//                         FormBuilderFieldOption(value: "Telugu"),
//                         FormBuilderFieldOption(value: "Other")
//                       ],
//                     ),
//                     FormBuilderSignaturePad(
//                       decoration: InputDecoration(
//                         labelText: "Signature",
//                         labelStyle: Theme.of(context).textTheme.bodyText2,
//                       ),
//                       name: "signature",
//                       height: 100,
//                     ),
//                     FormBuilderRating(
//                       decoration: InputDecoration(
//                         labelText: "Rate your Company",
//                         labelStyle: Theme.of(context).textTheme.bodyText2,
//                       ),
//                       name: "rate",
//                       iconSize: 32.0,
//                       initialValue: 1,
//                       max: 5,
//                     ),
//                     FormBuilderCheckbox(
//                       name: 'accept_terms',
//                       title: Text(
//                         "I have read and agree to the terms and conditions",
//                       ),
//                       validator: FormBuilderValidators.compose([
//                         FormBuilderValidators.required(
//                           context,
//                           errorText:
//                               'You must accept terms and conditions to continue',
//                         ),
//                       ]),
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   MaterialButton(
//                     child: Text(
//                       "Submit",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.green,
//                     onPressed: () {
//                       _fbKey.currentState.save();
//                       if (_fbKey.currentState.validate()) {
//                         print(_fbKey.currentState.value);
//                       }
//                     },
//                   ),
//                   MaterialButton(
//                     child: Text(
//                       "Reset",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.deepOrange,
//                     onPressed: () {
//                       _fbKey.currentState.reset();
//                     },
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   FormBuilderTouchSpin(
//       {InputDecoration decoration,
//       String name,
//       int initialValue,
//       int step,
//       double iconSize,
//       Icon addIcon,
//       Icon subtractIcon}) {}

//   FormBuilderSignaturePad(
//       {InputDecoration decoration, String name, int height}) {}

//   FormBuilderRating(
//       {InputDecoration decoration,
//       String name,
//       double iconSize,
//       int initialValue,
//       int max}) {}
// }
