# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stores = Store.create([{name: 'Ollivanders', description: 'Ollivanders is a wand shop founded in 382 B.C. Located in Diagon Alley South Side in London, England, it is owned by the Ollivander family, widely acknowledged to be the best wandmakers in Great Britain.', tagline: 'Makers of Fine Wands since 382 BC', location: 'Diagon Alley'},
                       {name: 'Potages Cauldron Shop', description: 'Potages Cauldron Shop is a shop on the North Side, Diagon Alley that sells all types of cauldrons', tagline: 'Cauldrons — All Sizes — Copper, Brass, Pewter, Silver — Self-Stirring — Collapsible', location: 'Knockturn Alley'},
                       {name: 'Flourish and Blotts', description: 'Flourish and Blotts Bookseller is a bookshop in North Side, Diagon Alley, about halfway down the street on the left hand side. Established in 1654, it is where most Hogwarts students purchase their schoolbooks.', tagline: 'Bookseller since 1654', location: 'Diagon Alley'},
                       {name: 'Dystyl Phaelanges', description: 'Dystyl Phaelanges is a shop in Knockturn Alley, specialising in bones, fossils and fangs, as well as pieces of furniture made from bone.', tagline: 'Here to lend a hand', location: 'Knockturn Alley'}])
