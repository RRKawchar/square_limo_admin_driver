class CompleteModel{
  final String name;
  final String image;
  final String phone;
  final String pickUpDate;
  final String pickUpTime;
  final String email;
  final String pickUpLocation;
  final String dropOffLocation;
  final String fleet;
  final String service;
  final String otherNote;



  CompleteModel({
    required this.name,
    required this.image,
    required this.phone,
    required this.pickUpDate,
    required this.pickUpTime,
    required this.pickUpLocation,
    required this.dropOffLocation,
    required this.email,
    required this.fleet,
    required this.otherNote,
    required this.service
});




}


final List<CompleteModel> completeRideList = [
  CompleteModel(
    name: "Alex Michel",
    image:
    "https://cdn.iconscout.com/icon/free/png-256/free-avatar-370-456322.png?f=webp",
    phone: "012 365 9874",
    pickUpDate: "25/11/2023",
    pickUpTime: "10:30 am",
    email: "yourmail@gmail.com",
    pickUpLocation: "Dhaka Bangladesh",
    dropOffLocation: "Chittagong, Bangladesh",
    fleet: "1234",
    service: "Business Trip",
    otherNote: "Cash on hand",
  ),
  CompleteModel(
    name: "Riyazur Rohman Kawchar",
    image:
    "https://t3.ftcdn.net/jpg/05/68/99/80/360_F_568998040_m42feFA9RajqmuR5DTlWwox44fxE3MOi.jpg",
    phone: "01888610543",
    pickUpDate: "25/11/2023",
    pickUpTime: "10:30 am",
    email: "riyazurrohmankawchar@gmail.com",
    pickUpLocation: "Dhaka Bangladesh",
    dropOffLocation: "Chittagong, Bangladesh",
    fleet: "1234",
    service: "Business Trip",
    otherNote: "Cash on hand",
  ),
  CompleteModel(
    name: "Alex Michel",
    image:
    "https://cdn.iconscout.com/icon/free/png-256/free-avatar-370-456322.png?f=webp",
    phone: "012 365 9874",
    pickUpDate: "25/11/2023",
    pickUpTime: "10:30 am",
    email: "yourmail@gmail.com",
    pickUpLocation: "Dhaka Bangladesh",
    dropOffLocation: "Chittagong, Bangladesh",
    fleet: "1234",
    service: "Business Trip",
    otherNote: "Cash on hand",
  ),
];