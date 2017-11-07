def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books JOIN series ON books.series_id = series.id WHERE series.id = 1 GROUP by books.year "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT  characters.name, characters.motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1 ;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT (*) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1 "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series INNER JOIN authors
  ON series.author_id = authors.id
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id
  "
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series INNER JOIN characters
  ON series.id = characters.series_id
  WHERE ( SELECT (COUNT (species)) FROM characters WHERE species = 'human') LIMIT 1;
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT (books.title)
  FROM character_books
  INNER JOIN characters
  ON character_books.character_id = characters.id
  INNER JOIN books
  ON books.id = character_books.book_id
  GROUP BY name ORDER by COUNT (books.title) DESC
  "
end
