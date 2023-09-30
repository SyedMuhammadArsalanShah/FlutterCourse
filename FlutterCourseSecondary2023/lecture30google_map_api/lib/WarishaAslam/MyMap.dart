// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutterapp27_map_api/CurrentLocation.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MyMap extends StatefulWidget {
//   const MyMap({super.key});

//   @override
//   State<MyMap> createState() => _MyMapState();
// }

// class _MyMapState extends State<MyMap> {
//   MapType currentmaptype = MapType.normal;
//   Completer<GoogleMapController> mapcompleter = Completer(); //to initailize map
//   CameraPosition cameraPosition = CameraPosition(
//       target: LatLng(24.905435862244907, 67.079816537444),
//       zoom: 14.2); //CameraPosition 2param target and zoom
//   List<Marker> markerspin = [];

//   final List<Marker> markerpts = [
//     Marker(
//       markerId: MarkerId("01"),
//       position: LatLng(24.915921165200842, 67.09215653929536),
//       infoWindow: InfoWindow(title: "Sirsyeduniversity"),
//     )
//   ];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   void switchmaptype() {
//     setState(() {
//       if (currentmaptype == MapType.normal) {
//         currentmaptype = MapType.satellite;
//       } else {
//         currentmaptype = MapType.normal;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Column(
//           children: [
//             Expanded(
//                 child: Container(
//               child: GoogleMap(
//                 initialCameraPosition: cameraPosition,
//                 mapType: currentmaptype,
//                 markers: Set.of(markerpts),
//                 onMapCreated: (GoogleMapController controller) {
//                   mapcompleter.complete(controller);
//                 },
//               ),
//             ))
//           ],
//         ),
//         Align(
//           alignment: Alignment.topRight,
//           child: IconButton(
//               iconSize: 62,
//               color: Color.fromARGB(255, 7, 110, 11),
//               onPressed: () {
//                 switchmaptype();
//               },
//               icon: (currentmaptype == MapType.normal)
//                   ? Icon(Icons.arrow_upward)
//                   : Icon(Icons.arrow_right)),
//         ),
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: ElevatedButton(
//             onPressed: () {
//               CurrentLocation().calllocation(markerpts, mapcompleter);
//               setState(() {});
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Color.fromARGB(255, 22, 100, 3),
//               // Background color
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(40),
//               ),
//             ),
//             child: Text(
//               'Current Location',
//               style: TextStyle(fontSize: 10, color: Colors.white),
//             ),
//           ),
//         )
//       ] //stack children

//           ),
//     );
//   }
// }

////////////////////////////////////////////////// third
import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutterapp27_map_api/Searchlocation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lecture30google_map_api/WarishaAslam/Searchlocation.dart';

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

TextEditingController searchcontroller = TextEditingController();

class _MyMapState extends State<MyMap> {
  MapType currentmaptype = MapType.normal;
  Completer<GoogleMapController> mapcompleter = Completer();
  CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(24.905435862244907, 67.079816537444),
    zoom: 14.2,
  );

  final List<Marker> markerpts = [
    const Marker(
      markerId: MarkerId("01"),
      position: LatLng(24.915921165200842, 67.09215653929536),
      infoWindow: InfoWindow(title: "Sirsyeduniversity"),
    )
  ];

// Warisha's Code
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       children: [
  //         Column(
  //           children: [
  //             Container(
  //               child: TextField(
  //                 controller: searchcontroller,
  //                 decoration: InputDecoration(
  //                   prefixIcon: Icon(Icons.search),
  //                   hintText: "Search here",
  //                 ),
  //                 onChanged: (value) {
  //                   // Handle search functionality here
  //                   print("search value =>" + value);
  //                   setState(() {

  //                     Searchlocation().getapi(value);

  //                   });
  //                 },
  //               ),
  //             ),
  //             Expanded(
  //               child: ListView.builder(
  //                   itemCount: Searchlocation().response_list == null
  //                       ? 0
  //                       : Searchlocation().response_list.length,
  //                   itemBuilder: (context, index) {
  //                     var data = Searchlocation().response_list[index];
  //                     return ListTile(
  //                         leading: Icon(Icons.map),
  //                         title: Text(data["description"]));
  //                   }),
  //             ),
  //           ],
  //         ),
  //         Align(
  //           alignment: Alignment.topRight,
  //           child: IconButton(
  //             iconSize: 62,
  //             color: Color.fromARGB(255, 7, 110, 11),
  //             onPressed: () {
  //               switchmaptype();
  //             },
  //             icon: (currentmaptype == MapType.normal)
  //                 ? Icon(Icons.arrow_upward)
  //                 : Icon(Icons.arrow_right),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.bottomLeft,
  //           child: ElevatedButton(
  //             onPressed: () {
  //               // Handle current location functionality here
  //               print("Current Location button pressed");
  //               // Call your current location method here
  //             },
  //             style: ElevatedButton.styleFrom(
  //               primary: Color(0xFF166403), // Background color
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(40),
  //               ),
  //             ),
  //             child: Padding(
  //               padding: const EdgeInsets.all(12.0),
  //               child: Text(
  //                 'Current Location',
  //                 style: TextStyle(fontSize: 16, color: Colors.white),
  //               ),
  //             ),
  //           ),
  //         ),
  //         Positioned(
  //           top: 190,
  //           left: 0,
  //           right: 0,
  //           bottom: 0,
  //           child: GoogleMap(
  //             initialCameraPosition: cameraPosition,
  //             mapType: currentmaptype,
  //             markers: Set.of(markerpts),
  //             onMapCreated: (GoogleMapController controller) {
  //               mapcompleter.complete(controller);
  //             },
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  final searchLocation = Searchlocation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 243, 243),
      appBar: AppBar(
        title: Text(
          "Google Map ",
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          searchfield(),
          searchlistvalues(),
          Expanded(
              flex: 5,
              child: Stack(
                children: [myGoogleMap(), switchmapbtn(),currentLocationBtn()],
              ))
        ],
      ),
    );
  }
  // text Field
  Widget searchfield() {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white,
          child: TextField(
            controller: searchcontroller,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search here",
            ),
            onChanged: (value) {
              // Handle search functionality here
              print("search value =>" + value);
              setState(() {
                searchLocation.getapi(value);
              });
            },
          ),
        ));
  }

  // Listview Builder Search Values 
  Widget searchlistvalues() {
    return Expanded(
      child: ListView.builder(
          itemCount: searchLocation.response_list.length,
          itemBuilder: (context, index) {
            var data = searchLocation.response_list[index];
            return ListTile(
                leading: const Icon(Icons.map),
                title: Text(data["description"]));
          }),
    );
  }

  // Google Map
  Widget myGoogleMap() {
    return GoogleMap(
      initialCameraPosition: cameraPosition,
      mapType: currentmaptype,
      markers: Set.of(markerpts),
      onMapCreated: (GoogleMapController controller) {
        mapcompleter.complete(controller);
      },
    );
  }

  // Map Type Btn
  Widget switchmapbtn() {
    return IconButton(
      iconSize: 62,
      color: Color.fromARGB(255, 7, 110, 11),
      onPressed: switchmaptype,
      icon: (currentmaptype == MapType.normal)
          ? Icon(Icons.arrow_upward)
          : Icon(Icons.arrow_right),
    );
  }

  // Current Location Btn
  Widget currentLocationBtn() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle current location functionality here
            print("Current Location button pressed");
            // Call your current location method here
          },
          style: ElevatedButton.styleFrom(
            // primary: Color(0xFF166403), // Background color
            backgroundColor: Color(0xFF166403), // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Current Location',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void switchmaptype() {
    setState(() {
      if (currentmaptype == MapType.normal) {
        currentmaptype = MapType.satellite;
      } else {
        currentmaptype = MapType.normal;
      }
    });
  }
}
