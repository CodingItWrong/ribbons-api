# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'josh@joshjustice.com', password: 'password')

books = [
  { name: 'Genesis', num_chapters: 50 },
  { name: 'Exodus', num_chapters: 40 },
  { name: 'Leviticus', num_chapters: 27 },
  { name: 'Numbers', num_chapters: 36 },
  { name: 'Deuteronomy', num_chapters: 34 },
  { name: 'Joshua', num_chapters: 24 },
  { name: 'Judges', num_chapters: 21 },
  { name: 'Ruth', num_chapters: 4 },
  { name: '1 Samuel', num_chapters: 31 },
  { name: '2 Samuel', num_chapters: 24 },
  { name: '1 Kings', num_chapters: 22 },
  { name: '2 Kings', num_chapters: 25 },
  { name: '1 Chronicles', num_chapters: 29 },
  { name: '2 Chronicles', num_chapters: 36 },
  { name: 'Ezra', num_chapters: 10 },
  { name: 'Nehemiah', num_chapters: 13 },
  { name: 'Esther', num_chapters: 10 },
  { name: 'Job', num_chapters: 42 },
  { name: 'Psalms', num_chapters: 150 },
  { name: 'Proverbs', num_chapters: 31 },
  { name: 'Ecclesiastes', num_chapters: 12 },
  { name: 'Song of Solomon', num_chapters: 8 },
  { name: 'Isaiah', num_chapters: 66 },
  { name: 'Jeremiah', num_chapters: 52 },
  { name: 'Lamentations', num_chapters: 5 },
  { name: 'Ezekiel', num_chapters: 48 },
  { name: 'Daniel', num_chapters: 12 },
  { name: 'Hosea', num_chapters: 14 },
  { name: 'Joel', num_chapters: 3 },
  { name: 'Amos', num_chapters: 9 },
  { name: 'Obadiah', num_chapters: 1 },
  { name: 'Jonah', num_chapters: 4 },
  { name: 'Micah', num_chapters: 7 },
  { name: 'Nahum', num_chapters: 3 },
  { name: 'Habakkuk', num_chapters: 3 },
  { name: 'Zephaniah', num_chapters: 3 },
  { name: 'Haggai', num_chapters: 2 },
  { name: 'Zechariah', num_chapters: 14 },
  { name: 'Malachi', num_chapters: 4 },
  { name: 'Matthew', num_chapters: 28 },
  { name: 'Mark', num_chapters: 16 },
  { name: 'Luke', num_chapters: 24 },
  { name: 'John', num_chapters: 21 },
  { name: 'Acts', num_chapters: 28 },
  { name: 'Romans', num_chapters: 16 },
  { name: '1 Corinthians', num_chapters: 16 },
  { name: '2 Corinthians', num_chapters: 13 },
  { name: 'Galatians', num_chapters: 6 },
  { name: 'Ephesians', num_chapters: 6 },
  { name: 'Philippians', num_chapters: 4 },
  { name: 'Colossians', num_chapters: 4 },
  { name: '1 Thessalonians', num_chapters: 5 },
  { name: '2 Thessalonians', num_chapters: 3 },
  { name: '1 Timothy', num_chapters: 6 },
  { name: '2 Timothy', num_chapters: 4 },
  { name: 'Titus', num_chapters: 3 },
  { name: 'Philemon', num_chapters: 1 },
  { name: 'Hebrews', num_chapters: 13 },
  { name: 'James', num_chapters: 5 },
  { name: '1 Peter', num_chapters: 5 },
  { name: '2 Peter', num_chapters: 3 },
  { name: '1 John', num_chapters: 5 },
  { name: '2 John', num_chapters: 1 },
  { name: '3 John', num_chapters: 1 },
  { name: 'Jude', num_chapters: 1 },
  { name: 'Revelation', num_chapters: 22 },
]

books.each_with_index do |book, index|
  Book.create!(book.merge({ id: index + 1 }))
end
