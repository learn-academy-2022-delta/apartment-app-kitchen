
user1 = User.where(email: 'jorge@testing.com').first_or_create(password: 'jorgeeats', password_confirmation: 'jorgeeats')
user2 = User.where( email: 'george@testing.com').first_or_create(password: 'georgeeats', password_confirmation: 'georgeeats')

 
apartments1 = [
  {
    street: '123 Kitchen Ave',
    city: 'San Diego',
    state: 'CA',
    manager: 'Jorge Smith',
    email: 'jorge@testing.com',
    price: '$3500',
    bedrooms: 4,
    bathrooms: 2,
    pets: 'Cats Ok',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5tMXO2OQLFSpSzCTHX3DxuskRQbt9stfiZg&usqp=CAU'
  },
  {
    street: '456 Table Rd',
    city: 'San Diego',
    state: 'CA',
    manager: 'Jorge Smith',
    email: 'jorge@testing.com',
    price: '$2500',
    bedrooms: 2,
    bathrooms: 1,
    pets: 'None',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsqeYDVfMQcEvw3vKrvjg-KdmNr3N4DJzrxg&usqp=CAU'
  }
]
  
apartments2 = [
  {
    street: '978 Highwater Ct',
    city: 'San Diego',
    state: 'CA',
    manager: 'George Alameda',
    email: 'george@testing.com',
    price: '$3000',
    bedrooms: 3,
    bathrooms: 2,
    pets: 'Dogs Ok',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyyKHKw86NRann0F4PgV-ZzdH-RhvND7LWpQ&usqp=CAU'
  }
]

apartments1.each do |each_apartment|
  user1.apartments.create each_apartment
  puts "creating apartment #{each_apartment}"
end

apartments2.each do |each_apartment|
    user2.apartments.create each_apartment
    puts "creating apartment #{each_apartment}"
  end
