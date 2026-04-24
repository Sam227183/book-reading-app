# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: "Sam", email: "samkim5869@gmail.com", password_digest: "password")

Book.create!([
  { title: "OOM and Design with UML", author: "Michael R Blaha", genre: :programming },
  { title: "Murder of Clockhouse", author: "Ayatsuji Yukito", genre: :mystery },
  { title: "Clean Code", author: "Robert Martin", genre: :programming },
  { title: "The Pragmatic Programmer", author: "David Thomas", genre: :programming },
  { title: "Design Patterns", author: "Gang of Four", genre: :programming },
  { title: "You Don't Know JS", author: "Kyle Simpson", genre: :programming },
  { title: "The Algorithm Design Manual", author: "Steven Skiena", genre: :programming },
  { title: "Sapiens", author: "Yuval Noah Harari", genre: :history },
  { title: "Guns, Germs, and Steel", author: "Jared Diamond", genre: :history },
  { title: "The Story of Art", author: "E.H. Gombrich", genre: :history },
  { title: "SPQR", author: "Mary Beard", genre: :history },
  { title: "The Silk Roads", author: "Peter Frankopan", genre: :history },
  { title: "1984", author: "George Orwell", genre: :fiction },
  { title: "Brave New World", author: "Aldous Huxley", genre: :fiction },
  { title: "The Road", author: "Cormac McCarthy", genre: :fiction },
  { title: "Dune", author: "Frank Herbert", genre: :fiction },
  { title: "Blindness", author: "Jose Saramago", genre: :fiction },
  { title: "A Brief History of Time", author: "Stephen Hawking", genre: :science },
  { title: "The Selfish Gene", author: "Richard Dawkins", genre: :science },
  { title: "Thinking, Fast and Slow", author: "Daniel Kahneman", genre: :science },
  { title: "The Body", author: "Bill Bryson", genre: :science },
  { title: "Surely You're Joking, Mr. Feynman!", author: "Richard Feynman", genre: :science }
])
