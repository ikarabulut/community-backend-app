require 'faker'

1000.times do
  User.create!([
  {name: Faker::Name.name , email: Faker::Internet.unique.email, password_digest: Faker::Internet.password(min_length: 10, max_length: 20)}
])
end

500.times do
Group.create!([
  {user_id: Random.rand(1..1000), name: Faker::Company.bs, email: Faker::Internet.unique.email, address: Faker::Address.full_address, website: Faker::Internet.url, mission_statement: Faker::Lorem.paragraph(sentence_count: 2), archived: false, image_url: "na", description: Faker::Lorem.paragraph(sentence_count: 5)}
])
end

100.times do
  Event.create!([
    {group_id: Random.rand(1..500), name: Faker::Lorem.sentence(word_count: 3), date: Faker::Date.between(from: '2022-01-23', to: '2022-06-25'), start_time: "2000-01-01 12:00:00", duration: [60,120,180].sample, address: Faker::Address.full_address, volunteers_needed: Random.rand(15..250), description: Faker::ChuckNorris.fact, archived: false, image_url: "na"}
  ])
end


Tag.create!([
  {tag: "Indoor", archived: false},
  {tag: "Outdoor", archived: false},
  {tag: "Park", archived: false},
  {tag: "Animals", archived: false},
  {tag: "Trees", archived: false},
  {tag: "Garden", archived: false},
  {tag: "Fundraise", archived: false},
  {tag: "Clean-Up", archived: false}
])



