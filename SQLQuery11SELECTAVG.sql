SELECT *
FROM Registration_card_of_intangible_assets
WHERE book_value > (SELECT AVG (book_value) FROM Registration_card_of_intangible_assets)