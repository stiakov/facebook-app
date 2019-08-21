
emails = %w(eli@woof.com santiago@woof.com dulce@woof.com)

3.times do |i|
  user = User.create!(name: Faker::Name.unique.first_name,
                     lastname: Faker::Name.last_name,
                     email: emails[i],
                     password: '123456',
                     password_confirmation: '123456')

  5.times do
    user.posts.build(
      content: Faker::Hacker.say_something_smart,
    ).save
  end
end