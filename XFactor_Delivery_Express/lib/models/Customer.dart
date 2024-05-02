class Customer {
  String imgUrl;
  String desc;
  String name;

  num price;

  String about;
  bool hightLight;
  Customer(this.imgUrl, this.desc, this.name, 
      this.price,  this.about,
      {this.hightLight = false});
  static List<Customer> generateRecommendDeliveries() {
    return [
      Customer(
          '/images/1.jpg',
          'Mirpur-1',
          'Shakib Ahmad',
         
          12,
         
         
          'Road-4,Ave-2,House-4,Mirpuer-10',
          hightLight: true),
      Customer(
        '/images/3.jpg',
        'Mirpur-12',
        'Tazan Rabbani',
       
        18,
       
        
        'Road-4,Ave-2,House-4,Mirpuer-10',
      ),
      Customer(
        '/images/2.png',
        'Mirpur-10',
        'Mamun Shakib',
        
        18,
        
      
        'Road-4,Ave-2,House-4,Mirpuer-10',
      ),
    ];
  }

  static List<Customer> generatePickUp() {
    return [
      Customer(
        '/images/4.jpg',
        'IDB Bhaban',
        'Star Tech',
       
        14.5,
        'Road-4,Ave-2,House-4,Mirpuer-10',
      ),
    ];
  }
}
