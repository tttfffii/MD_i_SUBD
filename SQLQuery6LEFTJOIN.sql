SELECT responsible_person_code, view_code
FROM Directory_of_responsible_people LEFT JOIN Directory_of_intangible_assets
ON Directory_of_responsible_people.responsible_person_code = Directory_of_intangible_assets.view_code