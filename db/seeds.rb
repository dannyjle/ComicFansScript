# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comic.create([
    { name: 'The Amazing Spider-Man ', number: 1, volume: 1, publisher: 'Marvel Comics', writer: 'Stan Lee', 
        description: "The FIRST issue of Amazing Spider-Man! 
        The amazing Spider-Man swings into his very first starring series, fresh off of his debut in the pages of Amazing Fantasy #15. 
        In one of his earliest adventures following Uncle Ben's death, Spider-Man must save a crew of astronauts aboard a malfunctioning space ship! 
        Then, Spider-Man tries to join the Fantastic Four and then runs afoul of the Chameleon!"},
    { name: 'Fantastic Four ', number: 1, volume: 1, publisher: 'Marvel', writer: 'Jonathan Hickman', 
        description: 'Reed Richards plans his most audacious scientific endeavor ever when he challenges himself to "solve everything," 
        and it leads him and the rest of the Fantastic Four into trouble.'},
    { name: 'Zatanna', number: 1, volume: 1, publisher: 'DC Comics', writer: 'Lee Marrs', 
        description: 'Zatanna is constantly haunted by bad dreams of her mother, pleading for help and she wonders if the dreams have any connection with 
        her decision to stop using magic and start living as a regular person.'}
    ])