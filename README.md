# Game Talk Backend

This is the backend for the Game Talk project, which is a web application that provides knowledge about various games, their companies, and gameplays. It allows users to explore different games, add favorites, leave reviews, and discover gameplays.

## Database Schema

The database schema for the Game Talk backend consists of several tables:

1. `companies`: Stores information about game companies, including name, description, web link, and image.

2. `favorites`: Keeps track of user-favorite games. It includes the game's name, description, image, site link, company name, and genre ID.

3. `gameplays`: Stores gameplays, including the name, video link, and the corresponding game ID.

4. `games`: Contains information about individual games, such as name, description, number of likes, image, site link, company name, genre ID, and favorite status.

5. `genres`: Stores the different game genres.

6. `reviews`: Keeps track of user reviews for games, including the comment, name of the reviewer, and the corresponding game ID.

## Routes and Endpoints

The backend provides various routes to handle different functionalities for the Game Talk application:

- `GET /`: This is a test route to check if the backend server is running successfully.

- `GET /company`: Retrieves all game companies from the database.

- `GET /company/:id`: Retrieves a specific game company based on the provided ID.

- `GET /games/:slug`: Retrieves games based on the provided genre slug. If the slug is "Trending," it returns all games in descending order of likes.

- `GET /reviews/:id`: Retrieves all reviews for a specific game based on the provided game ID.

- `GET /genre/:slug`: Retrieves all games belonging to a specific genre based on the provided genre slug.

- `GET /gameplay`: Retrieves all gameplays from the database.

- `GET /gameplay/:id`: Retrieves a specific gameplay based on the provided ID.

- `POST /reviews`: Adds a new review to the database for a specific game.

- `PATCH /games/:id`: Updates a game's information based on the provided game ID.

- `GET /favorites`: Retrieves all games that have been marked as favorites.

- `PATCH /favorites/:id`: Updates the favorite status of a game based on the provided game ID.

## CORS Configuration

The backend is configured to allow Cross-Origin Resource Sharing (CORS) by setting appropriate response headers. This ensures that the frontend application can access the backend API from a different origin.

## Installation and Usage

To run the Game Talk backend, follow these steps:

1. Install Ruby and Ruby on Rails on your machine.

2. Clone this repository to your local machine.

3. Navigate to the backend folder and run `bundle install` to install the required gems.

4. Set up the database by running `rake db:migrate` to create the necessary tables.

5. Start the server with `rake server`.

The backend will be up and running at `http://localhost:3000/`.

## Contribution

Contributions to the Game Talk project are welcome! Feel free to submit issues or pull requests to improve the backend or add new features.

## License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute it as per the terms of the license.

Happy gaming and exploring with Game Talk! 🎮🌟