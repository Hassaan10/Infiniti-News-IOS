# Infiniti App (iOS)

A simple and efficient News App for iOS built with Swift, SwiftUI, Needle, Codable, and URLSession, following Clean Architecture principles. The app fetches the latest news articles from a public API and displays them in a user-friendly interface.

## Features

- Browse the latest news articles by category.
- View detailed news article content.
- Clean, modern, and responsive UI built using SwiftUI.
- Dependency injection using Needle for better scalability and testability.
- Fetch data from an external API using URLSession.
- Organized using Clean Architecture principles.

## Technologies Used

- **Swift** – The primary programming language for iOS development.
- **SwiftUI** – A declarative framework for building user interfaces.
- **Needle** – A dependency injection framework for iOS.
- **Codable** – For easy encoding and decoding of JSON data.
- **URLSession** – For making network requests to fetch news data from the API.
- **Clean Architecture** – A software design pattern to organize and separate concerns in the app.
- **Asynv/Await** – For reactive programming to handle asynchronous data flow.

## Architecture Overview

This app follows **Clean Architecture**, which divides the app into the following layers:

- **Data Layer** – Handles data fetching, parsing, and storage. Uses URLSession for API calls and Codable for parsing JSON responses.
- **Domain Layer** – Contains business logic, entities, and use cases.
- **Presentation Layer** – Responsible for UI using SwiftUI and managing state with Combine and ViewModels.

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/Hassaan10/Infiniti-News-IOS.git
2. Open the project in Xcode.
3. Install the required dependencies using CocoaPods, Carthage, or Swift Package Manager.
4. Build and run the app on an iOS simulator or a physical device.

Add your API key into the constants file (X-Api-Key = 'YOUR_API_KEY')

## Screenshots

## API Documentation
This app fetches news data from the News API. You may need to create a free account and generate an API key to use the app with your own API key.

## How to Contribute
- Fork this repository.
- Create a new branch (git checkout -b feature/your-feature).
- Commit your changes (git commit -am 'Add new feature').
- Push to the branch (git push origin feature/your-feature).
- Create a new Pull Request.


## Acknowledgements
- *News API* for providing the news articles.
- *SwiftUI* for building modern, declarative UIs.
- *Needle* for dependency injection.
- *Codable* for easy parsing of JSON data.
- *URLSession* for network requests.
