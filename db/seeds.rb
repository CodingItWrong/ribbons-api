# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{name: 'Star Wars' }, {name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(email: 'example@example.com', password: 'password')

books = [
  {name: 'Genesis', num_chapters: 50, abbreviation: 'gen'},
  {name: 'Exodus', num_chapters: 40, abbreviation: 'ex'},
  {name: 'Leviticus', num_chapters: 27, abbreviation: 'lev'},
  {name: 'Numbers', num_chapters: 36, abbreviation: 'num'},
  {name: 'Deuteronomy', num_chapters: 34, abbreviation: 'deut'},
  {name: 'Joshua', num_chapters: 24, abbreviation: 'josh'},
  {name: 'Judges', num_chapters: 21, abbreviation: 'judg'},
  {name: 'Ruth', num_chapters: 4, abbreviation: 'ruth'},
  {name: '1 Samuel', num_chapters: 31, abbreviation: '1sam'},
  {name: '2 Samuel', num_chapters: 24, abbreviation: '2sam'},
  {name: '1 Kings', num_chapters: 22, abbreviation: '1ki'},
  {name: '2 Kings', num_chapters: 25, abbreviation: '2ki'},
  {name: '1 Chronicles', num_chapters: 29, abbreviation: '1chr'},
  {name: '2 Chronicles', num_chapters: 36, abbreviation: '2chr'},
  {name: 'Ezra', num_chapters: 10, abbreviation: 'ezra'},
  {name: 'Nehemiah', num_chapters: 13, abbreviation: 'neh'},
  {name: 'Esther', num_chapters: 10, abbreviation: 'est'},
  {name: 'Job', num_chapters: 42, abbreviation: 'job'},
  {name: 'Psalms', num_chapters: 150, singular_name: 'Psalm', abbreviation: 'ps'},
  {name: 'Proverbs', num_chapters: 31, abbreviation: 'prov'},
  {name: 'Ecclesiastes', num_chapters: 12, abbreviation: 'ecc'},
  {name: 'Song of Solomon', num_chapters: 8, abbreviation: 'sos'},
  {name: 'Isaiah', num_chapters: 66, abbreviation: 'isa'},
  {name: 'Jeremiah', num_chapters: 52, abbreviation: 'jer'},
  {name: 'Lamentations', num_chapters: 5, abbreviation: 'lam'},
  {name: 'Ezekiel', num_chapters: 48, abbreviation: 'eze'},
  {name: 'Daniel', num_chapters: 12, abbreviation: 'dan'},
  {name: 'Hosea', num_chapters: 14, abbreviation: 'hos'},
  {name: 'Joel', num_chapters: 3, abbreviation: 'joel'},
  {name: 'Amos', num_chapters: 9, abbreviation: 'amos'},
  {name: 'Obadiah', num_chapters: 1, abbreviation: 'obad'},
  {name: 'Jonah', num_chapters: 4, abbreviation: 'jon'},
  {name: 'Micah', num_chapters: 7, abbreviation: 'mic'},
  {name: 'Nahum', num_chapters: 3, abbreviation: 'nah'},
  {name: 'Habakkuk', num_chapters: 3, abbreviation: 'hab'},
  {name: 'Zephaniah', num_chapters: 3, abbreviation: 'zeph'},
  {name: 'Haggai', num_chapters: 2, abbreviation: 'hag'},
  {name: 'Zechariah', num_chapters: 14, abbreviation: 'zech'},
  {name: 'Malachi', num_chapters: 4, abbreviation: 'mal'},
  {name: 'Matthew', num_chapters: 28, abbreviation: 'mat'},
  {name: 'Mark', num_chapters: 16, abbreviation: 'mk'},
  {name: 'Luke', num_chapters: 24, abbreviation: 'lk'},
  {name: 'John', num_chapters: 21, abbreviation: 'john'},
  {name: 'Acts', num_chapters: 28, abbreviation: 'acts'},
  {name: 'Romans', num_chapters: 16, abbreviation: 'rom'},
  {name: '1 Corinthians', num_chapters: 16, abbreviation: '1cor'},
  {name: '2 Corinthians', num_chapters: 13, abbreviation: '2cor'},
  {name: 'Galatians', num_chapters: 6, abbreviation: 'gal'},
  {name: 'Ephesians', num_chapters: 6, abbreviation: 'eph'},
  {name: 'Philippians', num_chapters: 4, abbreviation: 'php'},
  {name: 'Colossians', num_chapters: 4, abbreviation: 'col'},
  {name: '1 Thessalonians', num_chapters: 5, abbreviation: '1th'},
  {name: '2 Thessalonians', num_chapters: 3, abbreviation: '2th'},
  {name: '1 Timothy', num_chapters: 6, abbreviation: '1tim'},
  {name: '2 Timothy', num_chapters: 4, abbreviation: '2tim'},
  {name: 'Titus', num_chapters: 3, abbreviation: 'ti'},
  {name: 'Philemon', num_chapters: 1, abbreviation: 'phm'},
  {name: 'Hebrews', num_chapters: 13, abbreviation: 'heb'},
  {name: 'James', num_chapters: 5, abbreviation: 'jas'},
  {name: '1 Peter', num_chapters: 5, abbreviation: '1pet'},
  {name: '2 Peter', num_chapters: 3, abbreviation: '2pet'},
  {name: '1 John', num_chapters: 5, abbreviation: '1jn'},
  {name: '2 John', num_chapters: 1, abbreviation: '2jn'},
  {name: '3 John', num_chapters: 1, abbreviation: '3jn'},
  {name: 'Jude', num_chapters: 1, abbreviation: 'jude'},
  {name: 'Revelation', num_chapters: 22, abbreviation: 'rev'},
]

books.each_with_index do |fields, index|
  existing_book = Book.find_by(name: fields[:name])
  if existing_book.present?
    existing_book.update!(fields)
  else
    Book.create!(fields.merge(id: index + 1))
  end
end
