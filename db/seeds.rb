# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.destroy_all
Airport.create!(
  [
    {
      id: 1,
      code: 'CBR',
      name: 'Canberra Airport'
    },
    {
      id: 2,
      code: 'SYD',
      name: 'Sydney Airport'
    },
    {
      id: 3,
      code: 'DRW',
      name: 'Darwin Airport'
    },
    {
      id: 4,
      code: 'BNE',
      name: 'Brisbane Airport'
    },
    {
      id: 5,
      code: 'MEL',
      name: 'Melbourne Airport'
    },
    {
      id: 6,
      code: 'ADL',
      name: 'Adelaide Airport'
    },
    {
      id: 7,
      code: 'PER',
      name: 'Perth Airport'
    }
  ]
)

Flight.destroy_all
Flight.create!(
  [
    {
      id: 1,
      start: (DateTime.civil_from_format :local, 2024, 4, 12, 8, 30),
      duration: 70,
      departure_airport_id: 3,
      arrival_airport_id: 4
},

{
      id: 2,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 7, 0),
      duration: 130,
      departure_airport_id: 2,
      arrival_airport_id: 6
},

{
      id: 3,
      start: (DateTime.civil_from_format :local, 2024, 4, 30, 21, 40),
      duration: 160,
      departure_airport_id: 1,
      arrival_airport_id: 3
},

{
      id: 4,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 9, 25),
      duration: 180,
      departure_airport_id: 2,
      arrival_airport_id: 4
},

{
      id: 5,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 19, 5),
      duration: 130,
      departure_airport_id: 2,
      arrival_airport_id: 7
},

{
      id: 6,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 15, 45),
      duration: 160,
      departure_airport_id: 2,
      arrival_airport_id: 6
},

{
      id: 7,
      start: (DateTime.civil_from_format :local, 2024, 4, 25, 8, 25),
      duration: 140,
      departure_airport_id: 5,
      arrival_airport_id: 3
},

{
      id: 8,
      start: (DateTime.civil_from_format :local, 2024, 4, 17, 20, 50),
      duration: 80,
      departure_airport_id: 4,
      arrival_airport_id: 6
},

{
      id: 9,
      start: (DateTime.civil_from_format :local, 2024, 4, 10, 10, 5),
      duration: 260,
      departure_airport_id: 4,
      arrival_airport_id: 1
},

{
      id: 10,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 13, 5),
      duration: 220,
      departure_airport_id: 7,
      arrival_airport_id: 5
},

{
      id: 11,
      start: (DateTime.civil_from_format :local, 2024, 4, 17, 8, 55),
      duration: 250,
      departure_airport_id: 3,
      arrival_airport_id: 2
},

{
      id: 12,
      start: (DateTime.civil_from_format :local, 2024, 4, 6, 13, 0),
      duration: 210,
      departure_airport_id: 2,
      arrival_airport_id: 3
},

{
      id: 13,
      start: (DateTime.civil_from_format :local, 2024, 4, 27, 9, 25),
      duration: 180,
      departure_airport_id: 3,
      arrival_airport_id: 6
},

{
      id: 14,
      start: (DateTime.civil_from_format :local, 2024, 4, 8, 11, 40),
      duration: 220,
      departure_airport_id: 4,
      arrival_airport_id: 6
},

{
      id: 15,
      start: (DateTime.civil_from_format :local, 2024, 4, 19, 7, 5),
      duration: 210,
      departure_airport_id: 6,
      arrival_airport_id: 7
},

{
      id: 16,
      start: (DateTime.civil_from_format :local, 2024, 4, 19, 12, 5),
      duration: 100,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 17,
      start: (DateTime.civil_from_format :local, 2024, 4, 10, 20, 0),
      duration: 90,
      departure_airport_id: 6,
      arrival_airport_id: 1
},

{
      id: 18,
      start: (DateTime.civil_from_format :local, 2024, 4, 3, 9, 40),
      duration: 170,
      departure_airport_id: 6,
      arrival_airport_id: 1
},

{
      id: 19,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 16, 10),
      duration: 80,
      departure_airport_id: 7,
      arrival_airport_id: 5
},

{
      id: 20,
      start: (DateTime.civil_from_format :local, 2024, 4, 8, 12, 25),
      duration: 220,
      departure_airport_id: 3,
      arrival_airport_id: 6
},

{
      id: 21,
      start: (DateTime.civil_from_format :local, 2024, 4, 19, 18, 45),
      duration: 240,
      departure_airport_id: 1,
      arrival_airport_id: 5
},

{
      id: 22,
      start: (DateTime.civil_from_format :local, 2024, 4, 29, 17, 50),
      duration: 250,
      departure_airport_id: 7,
      arrival_airport_id: 2
},

{
      id: 23,
      start: (DateTime.civil_from_format :local, 2024, 4, 27, 21, 25),
      duration: 80,
      departure_airport_id: 4,
      arrival_airport_id: 6
},

{
      id: 24,
      start: (DateTime.civil_from_format :local, 2024, 4, 10, 8, 50),
      duration: 190,
      departure_airport_id: 7,
      arrival_airport_id: 6
},

{
      id: 25,
      start: (DateTime.civil_from_format :local, 2024, 4, 1, 15, 40),
      duration: 210,
      departure_airport_id: 5,
      arrival_airport_id: 6
},

{
      id: 26,
      start: (DateTime.civil_from_format :local, 2024, 4, 25, 19, 45),
      duration: 140,
      departure_airport_id: 3,
      arrival_airport_id: 1
},

{
      id: 27,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 13, 50),
      duration: 140,
      departure_airport_id: 1,
      arrival_airport_id: 2
},

{
      id: 28,
      start: (DateTime.civil_from_format :local, 2024, 4, 29, 15, 50),
      duration: 90,
      departure_airport_id: 1,
      arrival_airport_id: 2
},

{
      id: 29,
      start: (DateTime.civil_from_format :local, 2024, 4, 5, 18, 40),
      duration: 260,
      departure_airport_id: 5,
      arrival_airport_id: 3
},

{
      id: 30,
      start: (DateTime.civil_from_format :local, 2024, 4, 26, 13, 20),
      duration: 230,
      departure_airport_id: 4,
      arrival_airport_id: 2
},

{
      id: 31,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 16, 20),
      duration: 110,
      departure_airport_id: 6,
      arrival_airport_id: 4
},

{
      id: 32,
      start: (DateTime.civil_from_format :local, 2024, 4, 25, 19, 50),
      duration: 190,
      departure_airport_id: 2,
      arrival_airport_id: 7
},

{
      id: 33,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 14, 35),
      duration: 200,
      departure_airport_id: 2,
      arrival_airport_id: 5
},

{
      id: 34,
      start: (DateTime.civil_from_format :local, 2024, 4, 27, 17, 50),
      duration: 70,
      departure_airport_id: 2,
      arrival_airport_id: 5
},

{
      id: 35,
      start: (DateTime.civil_from_format :local, 2024, 4, 10, 17, 10),
      duration: 120,
      departure_airport_id: 4,
      arrival_airport_id: 5
},

{
      id: 36,
      start: (DateTime.civil_from_format :local, 2024, 4, 30, 12, 40),
      duration: 70,
      departure_airport_id: 2,
      arrival_airport_id: 4
},

{
      id: 37,
      start: (DateTime.civil_from_format :local, 2024, 4, 15, 14, 45),
      duration: 230,
      departure_airport_id: 5,
      arrival_airport_id: 2
},

{
      id: 38,
      start: (DateTime.civil_from_format :local, 2024, 4, 17, 14, 40),
      duration: 260,
      departure_airport_id: 2,
      arrival_airport_id: 6
},

{
      id: 39,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 14, 15),
      duration: 190,
      departure_airport_id: 2,
      arrival_airport_id: 4
},

{
      id: 40,
      start: (DateTime.civil_from_format :local, 2024, 4, 8, 10, 5),
      duration: 90,
      departure_airport_id: 1,
      arrival_airport_id: 3
},

{
      id: 41,
      start: (DateTime.civil_from_format :local, 2024, 4, 8, 17, 5),
      duration: 70,
      departure_airport_id: 2,
      arrival_airport_id: 3
},

{
      id: 42,
      start: (DateTime.civil_from_format :local, 2024, 4, 11, 19, 45),
      duration: 260,
      departure_airport_id: 1,
      arrival_airport_id: 5
},

{
      id: 43,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 18, 5),
      duration: 240,
      departure_airport_id: 2,
      arrival_airport_id: 5
},

{
      id: 44,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 18, 15),
      duration: 230,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 45,
      start: (DateTime.civil_from_format :local, 2024, 4, 26, 14, 35),
      duration: 80,
      departure_airport_id: 2,
      arrival_airport_id: 5
},

{
      id: 46,
      start: (DateTime.civil_from_format :local, 2024, 4, 28, 18, 25),
      duration: 120,
      departure_airport_id: 2,
      arrival_airport_id: 3
},

{
      id: 47,
      start: (DateTime.civil_from_format :local, 2024, 4, 8, 18, 10),
      duration: 150,
      departure_airport_id: 5,
      arrival_airport_id: 7
},

{
      id: 48,
      start: (DateTime.civil_from_format :local, 2024, 4, 5, 11, 5),
      duration: 160,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 49,
      start: (DateTime.civil_from_format :local, 2024, 4, 2, 12, 45),
      duration: 170,
      departure_airport_id: 1,
      arrival_airport_id: 7
},

{
      id: 50,
      start: (DateTime.civil_from_format :local, 2024, 4, 3, 9, 25),
      duration: 180,
      departure_airport_id: 5,
      arrival_airport_id: 7
},

{
      id: 51,
      start: (DateTime.civil_from_format :local, 2024, 4, 25, 18, 35),
      duration: 200,
      departure_airport_id: 5,
      arrival_airport_id: 3
},

{
      id: 52,
      start: (DateTime.civil_from_format :local, 2024, 4, 14, 14, 25),
      duration: 170,
      departure_airport_id: 5,
      arrival_airport_id: 6
},

{
      id: 53,
      start: (DateTime.civil_from_format :local, 2024, 4, 30, 17, 15),
      duration: 230,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 54,
      start: (DateTime.civil_from_format :local, 2024, 4, 27, 8, 45),
      duration: 170,
      departure_airport_id: 4,
      arrival_airport_id: 6
},

{
      id: 55,
      start: (DateTime.civil_from_format :local, 2024, 4, 26, 7, 30),
      duration: 90,
      departure_airport_id: 2,
      arrival_airport_id: 4
},

{
      id: 56,
      start: (DateTime.civil_from_format :local, 2024, 4, 9, 13, 15),
      duration: 260,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 57,
      start: (DateTime.civil_from_format :local, 2024, 4, 1, 17, 30),
      duration: 130,
      departure_airport_id: 6,
      arrival_airport_id: 4
},

{
      id: 58,
      start: (DateTime.civil_from_format :local, 2024, 4, 30, 20, 40),
      duration: 140,
      departure_airport_id: 5,
      arrival_airport_id: 1
},

{
      id: 59,
      start: (DateTime.civil_from_format :local, 2024, 4, 27, 19, 25),
      duration: 240,
      departure_airport_id: 5,
      arrival_airport_id: 6
},

{
      id: 60,
      start: (DateTime.civil_from_format :local, 2024, 4, 1, 20, 30),
      duration: 190,
      departure_airport_id: 7,
      arrival_airport_id: 4
},

{
      id: 61,
      start: (DateTime.civil_from_format :local, 2024, 4, 13, 12, 5),
      duration: 80,
      departure_airport_id: 2,
      arrival_airport_id: 3
},

{
      id: 62,
      start: (DateTime.civil_from_format :local, 2024, 4, 17, 17, 5),
      duration: 160,
      departure_airport_id: 4,
      arrival_airport_id: 6
},

{
      id: 63,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 9, 20),
      duration: 160,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 64,
      start: (DateTime.civil_from_format :local, 2024, 4, 1, 14, 30),
      duration: 120,
      departure_airport_id: 4,
      arrival_airport_id: 3
},

{
      id: 65,
      start: (DateTime.civil_from_format :local, 2024, 4, 8, 12, 5),
      duration: 240,
      departure_airport_id: 2,
      arrival_airport_id: 1
},

{
      id: 66,
      start: (DateTime.civil_from_format :local, 2024, 4, 15, 21, 15),
      duration: 250,
      departure_airport_id: 3,
      arrival_airport_id: 7
},

{
      id: 67,
      start: (DateTime.civil_from_format :local, 2024, 4, 16, 14, 0),
      duration: 90,
      departure_airport_id: 1,
      arrival_airport_id: 5
},

{
      id: 68,
      start: (DateTime.civil_from_format :local, 2024, 4, 11, 19, 50),
      duration: 210,
      departure_airport_id: 5,
      arrival_airport_id: 4
},

{
      id: 69,
      start: (DateTime.civil_from_format :local, 2024, 4, 17, 16, 5),
      duration: 90,
      departure_airport_id: 7,
      arrival_airport_id: 3
},

{
      id: 70,
      start: (DateTime.civil_from_format :local, 2024, 4, 7, 21, 45),
      duration: 90,
      departure_airport_id: 7,
      arrival_airport_id: 2
},

{
      id: 71,
      start: (DateTime.civil_from_format :local, 2024, 4, 26, 8, 10),
      duration: 260,
      departure_airport_id: 1,
      arrival_airport_id: 2
},

{
      id: 72,
      start: (DateTime.civil_from_format :local, 2024, 4, 16, 11, 45),
      duration: 70,
      departure_airport_id: 5,
      arrival_airport_id: 6
},

{
      id: 73,
      start: (DateTime.civil_from_format :local, 2024, 4, 5, 11, 30),
      duration: 240,
      departure_airport_id: 6,
      arrival_airport_id: 3
},

{
      id: 74,
      start: (DateTime.civil_from_format :local, 2024, 4, 12, 13, 15),
      duration: 70,
      departure_airport_id: 5,
      arrival_airport_id: 2
},

{
      id: 75,
      start: (DateTime.civil_from_format :local, 2024, 4, 30, 15, 30),
      duration: 70,
      departure_airport_id: 4,
      arrival_airport_id: 2
},

{
      id: 76,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 7, 15),
      duration: 160,
      departure_airport_id: 3,
      arrival_airport_id: 2
},

{
      id: 77,
      start: (DateTime.civil_from_format :local, 2024, 4, 17, 19, 15),
      duration: 110,
      departure_airport_id: 2,
      arrival_airport_id: 3
},

{
      id: 78,
      start: (DateTime.civil_from_format :local, 2024, 4, 28, 9, 35),
      duration: 250,
      departure_airport_id: 1,
      arrival_airport_id: 2
},

{
      id: 79,
      start: (DateTime.civil_from_format :local, 2024, 4, 12, 11, 20),
      duration: 230,
      departure_airport_id: 3,
      arrival_airport_id: 1
},

{
      id: 80,
      start: (DateTime.civil_from_format :local, 2024, 4, 28, 11, 5),
      duration: 180,
      departure_airport_id: 4,
      arrival_airport_id: 3
},

{
      id: 81,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 12, 10),
      duration: 150,
      departure_airport_id: 4,
      arrival_airport_id: 7
},

{
      id: 82,
      start: (DateTime.civil_from_format :local, 2024, 4, 23, 12, 20),
      duration: 120,
      departure_airport_id: 5,
      arrival_airport_id: 4
},

{
      id: 83,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 12, 5),
      duration: 260,
      departure_airport_id: 5,
      arrival_airport_id: 4
},

{
      id: 84,
      start: (DateTime.civil_from_format :local, 2024, 4, 21, 11, 50),
      duration: 160,
      departure_airport_id: 2,
      arrival_airport_id: 5
},

{
      id: 85,
      start: (DateTime.civil_from_format :local, 2024, 4, 25, 12, 15),
      duration: 80,
      departure_airport_id: 1,
      arrival_airport_id: 5
},

{
      id: 86,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 16, 45),
      duration: 240,
      departure_airport_id: 3,
      arrival_airport_id: 2
},

{
      id: 87,
      start: (DateTime.civil_from_format :local, 2024, 4, 24, 7, 30),
      duration: 70,
      departure_airport_id: 3,
      arrival_airport_id: 5
},

{
      id: 88,
      start: (DateTime.civil_from_format :local, 2024, 4, 7, 15, 45),
      duration: 230,
      departure_airport_id: 1,
      arrival_airport_id: 7
},

{
      id: 89,
      start: (DateTime.civil_from_format :local, 2024, 4, 2, 8, 10),
      duration: 210,
      departure_airport_id: 4,
      arrival_airport_id: 6
},

{
      id: 90,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 21, 5),
      duration: 140,
      departure_airport_id: 2,
      arrival_airport_id: 4
},

{
      id: 91,
      start: (DateTime.civil_from_format :local, 2024, 4, 15, 16, 30),
      duration: 150,
      departure_airport_id: 1,
      arrival_airport_id: 2
},

{
      id: 92,
      start: (DateTime.civil_from_format :local, 2024, 4, 18, 16, 15),
      duration: 220,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 93,
      start: (DateTime.civil_from_format :local, 2024, 4, 26, 9, 10),
      duration: 120,
      departure_airport_id: 4,
      arrival_airport_id: 3
},

{
      id: 94,
      start: (DateTime.civil_from_format :local, 2024, 4, 3, 13, 20),
      duration: 130,
      departure_airport_id: 3,
      arrival_airport_id: 2
},

{
      id: 95,
      start: (DateTime.civil_from_format :local, 2024, 4, 22, 17, 20),
      duration: 260,
      departure_airport_id: 3,
      arrival_airport_id: 1
},

{
      id: 96,
      start: (DateTime.civil_from_format :local, 2024, 4, 29, 18, 30),
      duration: 100,
      departure_airport_id: 2,
      arrival_airport_id: 3
},

{
      id: 97,
      start: (DateTime.civil_from_format :local, 2024, 4, 19, 19, 25),
      duration: 150,
      departure_airport_id: 2,
      arrival_airport_id: 4
},

{
      id: 98,
      start: (DateTime.civil_from_format :local, 2024, 4, 27, 14, 10),
      duration: 200,
      departure_airport_id: 7,
      arrival_airport_id: 1
},

{
      id: 99,
      start: (DateTime.civil_from_format :local, 2024, 4, 14, 7, 5),
      duration: 220,
      departure_airport_id: 6,
      arrival_airport_id: 5
}


  ]
)
