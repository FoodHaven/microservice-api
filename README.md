<h1>Food Haven</h1>

- In a world with food deserts, Food Haven supplies the public with location services for local farmer's markets. The search for markets focuses on farmer's markets that accept Supplemental Nutrition Assistance Program (SNAP) benefits and identifies the type of benefit assistance at the market if the data is available. The user can then select a market they wish to visit and utilizing the maps portion of the application, the user may locate public service transit routes and schedules available to connect them to the market from their current location. 

<b>Developers:</b>

Kailey Kaes: https://github.com/kaileykaes

Jesse Sorman: https://github.com/Jesse193

Kim Bergstrom: https://github.com/kbergstrom78

Andy Stilmock: https://github.com/AStilmock

<h2>Microservice: https://github.com/FoodHaven/microservice-api</h2>

- API that consumes USDA snap approved farmer market csv data and exposes that data for backend application consumption.
  - USDA Farmer Markets data table that include farmer markets accepting Supplemental Nutrition Assistance Program (SNAP) Benifits can be found here: (https://www.usdalocalfoodportal.com/fe/datasharing/)

Dependencies: 

Front End: https://github.com/FoodHaven/FE_APP

Back end: https://github.com/FoodHaven/BE_APP

<h3>Getting started</h3>

Rails Version: 7.0.6

- Run `bundle install` to get all Gems to work properly

- Run `rails db:{drop,create,migrate,seed}`

<h4>Gems</h4>

- Geokit
  - Provides geocoding and distance calculation abilities for Ruby on Rails applications.
  - Documentation for Geokit can be found at: https://rubygems.org/gems/geokit
