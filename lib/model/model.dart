class Model{

  Model? model;
  String? image, title,specialist,address,rating,about,visitFee, totalPatint,experience;
 Model(
      {this.model,this.title,this.image,this.specialist,this.address,this.rating,this.about,this.visitFee,this.totalPatint,this.experience
    });
}



List<Model> specialisttype = [
  Model(
      title: 'Nuro',
     
      image:
          'assets/Layer_1.png',
     ), Model(
      title: 'Hart',
     
      image:
          'assets/Group (2).png',
     ), Model(
      title: 'Lung',
     
      image:
          'assets/Layer_1 (1).png',
     ), Model(
      title: 'Kidney',
     
      image:
          'assets/healthicons_kidneys-outline.png',
     ),
  
];

List<Model> topDocrorModel = [
  Model(image: 'assets/doctor01.jpeg',
  title: 'Mr, Kamal',
  specialist: 'Health',
  address: 'Avercare, Dhaka',
  visitFee: '100',
  totalPatint: '700',
  experience: '10 Years',
  rating: '4.5',),

   Model(image: 'assets/doctor02.png',
  title: 'Mr, Jerin',
  specialist: 'Nuro',
  address: 'Avercare, Dhaka',
   visitFee: '400',
  totalPatint: '1000',
  experience: '10 Years',
  rating: '4.8',),

   Model(image: 'assets/doctor03.jpeg',
  title: 'Mr, Habib',
  specialist: 'Nuro',
  address: 'Avercare, Dhaka',
   visitFee: '1100',
  totalPatint: '1200',
  experience: '15 Years',
  rating: '4.3',),

    Model(image: 'assets/doctor04.jpeg',
  title: 'Mr, Jerin',
  specialist: 'Nuro',
  address: 'Avercare, Dhaka',
   visitFee: '700',
  totalPatint: '1700',
  experience: '17 Years',
  rating: '4.1',),

   Model(image: 'assets/doctor05.jpeg',
  title: 'Mr, Lema',
  specialist: 'Nuro',
  address: 'Avercare, Dhaka',
  visitFee: '1200',
  totalPatint: '1700',
  experience: '18 Years',
  rating: '4.8',),
  
];


List <Model> foodRestriction =[

    Model(
      title: 'Coffee',
     
      image:
          'assets/Layer_1.png',
     ), Model(
      title: 'Sugar',
     
      image:
          'assets/Group (2).png',
     ), Model(
      title: 'Lung',
     
      image:
          'assets/Layer_1 (1).png',
     ), Model(
      title: 'Kidney',
     
      image:
          'assets/healthicons_kidneys-outline.png',
     ),

];