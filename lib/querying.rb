def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, year from books, series where series.id = books.series_id AND series.id =1 order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from (select name, motto, LENGTH(motto) AS motto_length from characters order by motto_length desc) LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(*) as species_count from characters group by species order by species_count DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from series, authors, subgenres where series.author_id = authors.id and series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "select title from (select series.title, count(*) from series, characters where series.id = characters.series_id and species = 'human' group by series.title order by count(*) DESC) LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(books.title) as total from character_books, books, characters where character_books.book_id = books.id and character_books.character_id = characters.id group by characters.name order by total DESC"
end
