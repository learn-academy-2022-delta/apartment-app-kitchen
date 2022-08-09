
user1 = User.where(email: 'jorge@testing.com').first_or_create(password: 'jorgeeats', password_confirmation: 'jorgeeats')
user2 = User.where( email: 'george@testing.com').create(password: 'georgeeats', password_confirmation: 'georgeeats')

 
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
    image: 'image.png'
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
    image: 'image.png'
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
    image: 'image.png'
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
