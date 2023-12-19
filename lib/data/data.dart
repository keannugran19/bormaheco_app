import 'package:gran_app/model/product.dart';

final _product1 = product(
    imageUrl: 'assets/images/backhoe.jpg',
    type: 'Backhoe',
    address: 'Bajada, Davao City',
    description:
        '2020 CAT 432 F2, 1860 w/hrs, CAT C 4.4 engine, 74.50 Kw, 8030 kg, with AdBlue / regeneration filter, EPA certificate, 4x1 front bucket, forks kit, 4x4, extendable arm, A/C, hammer line, joystick on excavation, HILL Tefra QC, 360 deg camera, Michelin tires (front new tires), made in UK with CE certificate.',
    price: 2000000,
    isFav: false,
    moreImagesUrl: [
      'assets/images/backhoe.jpg',
      'assets/images/backhoe1.jpg',
      'assets/images/backhoe2.jpg',
    ]);

final _product2 = product(
    imageUrl: 'assets/images/bulldozer.jpg',
    type: 'bulldozer',
    address: 'Bajada, Davao City',
    description:
        'Brand Caterpillar Model D7H, Type: bulldozer, Machineryline ID: YA19206',
    price: 2792000,
    isFav: false,
    moreImagesUrl: [
      'assets/images/bulldozer.jpg',
      'assets/images/bulldozer1.jpg',
      'assets/images/bulldozer2.jpg',
    ]);

final _product3 = product(
    imageUrl: 'assets/images/dumptruck.jpg',
    type: 'dumptruck',
    address: 'Bajada, Davao City',
    description:
        'Used Dump Truck 371 for sale, Low working hours and high working efficiency; Strong engine working power and stability; Good working condition & Competitive price, Various machines to choose, Good After-sales Service.',
    price: 1117000,
    isFav: false,
    moreImagesUrl: [
      'assets/images/dumptruck.jpg',
      'assets/images/dumptruck1.jpg',
      'assets/images/dumptruck2.jpg',
    ]);

final _product4 = product(
    imageUrl: 'assets/images/forklift.jpg',
    type: 'forklift',
    address: 'Bajada, Davao City',
    description:
        'Brand Komatsu, Model 50, Type: diesel forklift, Year of manufacture: 2018, Load capacity: 5000 kg, Net weight: 8000 kg, Gross weight: 13000 kg, Lifting height: 3.5 m, Forkliftonline ID: LJ37227.',
    price: 1200000,
    isFav: false,
    moreImagesUrl: [
      'assets/images/forklift.jpg',
      'assets/images/forklift1.jpg',
      'assets/images/forklift2.jpg',
    ]);

final _product5 = product(
    imageUrl: 'assets/images/roller.jpg',
    type: 'roller',
    address: 'Bajada, Davao City',
    description:
        'Brand: Caterpillar, Model: CS583D, Type: road roller, Year of manufacture: 2017, Running hours: 3500 m/h, Placed on Dec 17, 2023, Machineryline ID: TW36437.',
    price: 1452000,
    isFav: false,
    moreImagesUrl: [
      'assets/images/roller.jpg',
      'assets/images/roller1.jpg',
      'assets/images/roller2.jpg',
    ]);

final _product6 = product(
    imageUrl: 'assets/images/officeONE.jpg',
    type: 'Office space 1',
    address: 'Barangay 13-B, Davao City',
    description:
        'Open plan office space for 10 persons available on flexible terms, so you can add space or even move location – wherever you need to be. Retreat from the all-go nature of the office with a drop-in business lounge that lets you work in peace and comfort. House guests in the range of hotels that can be found in the area, while spending evenings browsing a varied selection of restaurants.',
    price: 115300,
    isFav: false,
    moreImagesUrl: [
      'assets/images/officeONE.jpg',
      'assets/images/officeONE1.jpg',
      'assets/images/officeONE2.jpg',
    ]);

final _product7 = product(
    imageUrl: 'assets/images/officeTWO.jpg',
    type: 'Flexible workspace',
    address: 'Clark, Macabalat',
    description:
        'Give your business a prime position in Mabalacat City, Pampanga – the Philippines’ busiest northern development after Manila. Clark Centre 07 is a dynamic commercial hub complete with parking, just 7 minutes from Clark International Airport. Commute easily from the E4 expressway, grab a drink from the on-site coffee bar and enjoy a productive day in your modern offices. And after a successful week, treat your team at a choice of cafés and restaurants within a short walk.',
    price: 13400,
    isFav: false,
    moreImagesUrl: [
      'assets/images/officeTWO.jpg',
      'assets/images/officeTWO1.jpg',
      'assets/images/officeTWO2.jpg',
    ]);

final _product8 = product(
    imageUrl: 'assets/images/officeTHREE.jpg',
    type: 'office space 2',
    address: 'Mandurria, Iloilo',
    description:
        'Open plan office space for 10 persons available on flexible terms, so you can add space or even move location – wherever you need to be. Work your way in Iloilo City with flexible workspace at Festive Walk Mall. Build your business with convenience in mind in this upmarket development in the heart of Mandurriao, where you’ve got everything on your doorstep to stay productive and relaxed. Get creative from day one in beautifully-designed workspaces and meeting rooms. Meet potential clients and collaborators in our sociable coworking areas. When work’s done for the day, entertain and unwind at one of the many restaurants nearby.',
    price: 111340,
    isFav: false,
    moreImagesUrl: [
      'assets/images/officeTHREE.jpg',
      'assets/images/officeTHREE1.jpg',
      'assets/images/officeTHREE2.jpg',
    ]);

final List<product> productsList = [
  _product1,
  _product2,
  _product6,
  _product3,
  _product4,
  _product7,
  _product5,
  _product8
];

// final List<product> heavyEquipments = [
//   _product1,
//   _product2,
//   _product3,
//   _product4,
//   _product5
// ];

List<String> categoryList = [
  ' All ',
  'Heavy Equipments',
  'Properties',
];
