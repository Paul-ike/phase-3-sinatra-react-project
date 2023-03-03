puts "🌱 Seeding data..."

# Seed your database here
    Book.create(
        title: "Lord of the Rings",
        image: "https://upload.wikimedia.org/wikipedia/en/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif",
        author: "J. R. R. Tolkien",
        price: 800
    )

    Book.create(
        title: "The Wheel of Time",
        image: "https://upload.wikimedia.org/wikipedia/en/0/00/WoT01_TheEyeOfTheWorld.jpg",
        author: "Robert Jordan & Brandon Sanderson",
        price: 1000
    )

    Book.create(
        title: "The Three Musketeers",
        image: "https://images.booksense.com/images/413/815/9781641815413.jpg",
        author: "Alexandre Dumas",
        price: 500
    )

    Book.create(
        title: "Harry Potter and the Philosopher's Stone",
        image: "https://upload.wikimedia.org/wikipedia/en/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg",
        author: "J. K. Rowling",
        price: 750
    )

    Book.create(
        title: "Fire and Blood",
        image: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Fire_%26_Blood_%282018%29_hardcover.jpg/220px-Fire_%26_Blood_%282018%29_hardcover.jpg",
        author: "George R. R. Martin",
        price: 1500
    )

    Book.create(
        title: "Northern Lights",
        image: "https://m.media-amazon.com/images/I/71brDjQYnaL.jpg",
        author: "Philip Pullman",
        price: 1500
    )

    Book.create(
        title: "The Name of the Wind",
        image: "https://m.media-amazon.com/images/I/71jJcPTGd3L.jpg",
        author: "Patrick Rothfuss",
        price: 1500
    )

10.times do
    Review.create(
        star_rating: rand(50..100),
        comment: Faker::Lorem.sentence,
        book_id: rand(1..7)
    )
end

puts "✅ Done seeding!"
