puts "🌱 Seeding data..."

# Seed your database here
    Book.create(
        title: "A Glass of Blessings",
        image: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d7/AGlassOfBlessings.jpg/220px-AGlassOfBlessings.jpg",
        genre: "Novel",
        price: 800
    )

    Book.create(
        title: "His Dark Materials",
        image: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e3/HisDarkMaterials1stEdition.jpg/220px-HisDarkMaterials1stEdition.jpg",
        genre: "Children's literature",
        price: 1000
    )

    Book.create(
        title: "Down to a Sunless Sea",
        image: "https://upload.wikimedia.org/wikipedia/en/b/b4/DownToASunlessSea.jpg",
        genre: "Adventure fiction",
        price: 500
    )

    Book.create(
        title: "The Book of Dust",
        image: "https://upload.wikimedia.org/wikipedia/en/0/0e/La_Belle_Sauvage.jpg",
        genre: "Fantasy",
        price: 750
    )

5.times do
    Review.create(
        star_rating: rand(0..5),
        comment: Faker::Lorem.sentence,
        book_id: rand(1..4)
    )
end

puts "✅ Done seeding!"
