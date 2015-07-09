# farm_hand

Farm Hand helps boutique organic farmers succeed by giving them tools to analyze animal performance and profitability over the course of the seasons.


GEMS NEEDED:
- visualization...
- figaro?
- factory girl?
- rspec?
- mandrill?
- PDF maker?
- location finder?


TRELLO BOARD LINK
https://trello.com/b/WbtK9pRv/farm-hand-1-0


MODEL STRUCTURE

FARM
------------------------
*has_many: animals
*has_many: incomes
*has_many: expenses
*has_many: weathers
- animal_id   (int) *REQ
- income_id   (int) *REQ
- expense_id  (int) *REQ
- weather_id  (int) *REQ


ANIMAL
--------------------------
*has_many:    breeds
*has_many:    eggs, through: :breed
- id        (int)    *REQ
- name      (str) *REQ
- breed_id  (int) *REQ
- egg_id    (int) *REQ


EGG
-------------------------
*belongs_to:    animal
*belongs_to:    income
*has_many:      colors
has_paper_trail
- id              (int) *REQ
- color_id        (str) *REQ
- price           (int) *REQ


BREED
--------------------------
*belongs_to:  animal
*has_many:    eggs
- id          (int) *REQ
- name        (str) *REQ
- egg_id      (int) *REQ



INCOME
--------------------------
*belongs_to:    farm
*has_many:      eggs
- id            (int) *REQ
- egg_id        (int) *REQ
- quantity_sold (int) *REQ
- amount        (int) *REQ


EXPENSE
---------------------------
*belongs_to:    farm
- id            (int)
- title         (str) *REQ
- amount        (int) *REQ


WEATHER
------------------------------
*belongs_to:    location
- high_temp     (int) *REQ
- low_temp      (int) *REQ
- wind_speed    (int) *REQ
- precipitation (int) *REQ
- sunrise       (int) *REQ
- sunset        (int) *REQ
- location_id   (int) *REQ


LOCATION
------------------------------
*has_many:      users
*has_many:      weathers
- id            (int) *REQ
- zipcode       (int) *REQ
- user_id       (int) *REQ
- weather_id    (int) *REQ


USER
---------------------------
*belongs_to:    location
- name          (str) *REQ
- email         (str) *REQ
- password      (str) *REQ
- password_conf (str) *REQ
- location_id   (int) *REQ

