class InProgressModel{
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



  InProgressModel({
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


final List<InProgressModel> inProgressList = [
  InProgressModel(
    name: "Alex Michel",
    image:
    "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_640.jpg",
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
  InProgressModel(
    name: "Riyazur Rohman Kawchar",
    image:
    "https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
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
  InProgressModel(
    name: "Alex Michel",
    image:
    "https://t4.ftcdn.net/jpg/05/67/67/09/360_F_567670999_rHD0uuHAGdORTNDLv0O8ZvszlUcLigOJ.jpg",
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

  InProgressModel(
    name: "Alex Michel",
    image:
    "https://images.augustman.com/wp-content/uploads/sites/3/2022/04/07161423/stacey-franco-ex9kqrn1mj0-unspla.jpeg",
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