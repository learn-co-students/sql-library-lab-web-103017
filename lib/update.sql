UPDATE characters SET species = "Martian" where id = (select MAX(id) from characters)
