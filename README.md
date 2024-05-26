# flutter_test1

Technical Assessment - Flutter 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

overview: This is a flutter app that is build for interview purpose, although this is a simple app but it has many feature, in this app i have use GetX as state management a with that i have use other dependencies for better experience so I'm not going to mention it every time, i have build this app categorically and use clean stature so that other can understand it.

everything since now i have done in this project will  will be provided in a link with screen recoding.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assignment 1: Basic Flutter App with Dart
Objective: Create a basic Flutter app with a simple UI.
Tasks:
1. Set up a new Flutter project.
2. Create a home screen with a title and a button.
3. When the button is pressed, navigate to a new screen that displays a message.
4. Implement basic Dart classes and functions to handle navigation logic.

about: This is an simple app that change page by a button click and show some text on the next page,

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assignment 2: State Management with GetX
Objective: Enhance the Flutter app with state management using GetX.
Tasks:
1. Integrate GetX into the existing Flutter project.
2. Create a counter app where pressing a button increases a counter.
3. Use GetX to manage the state of the counter and update the UI accordingly.

about: The Counter App is a simple, yet effective Flutter application that demonstrates the basics of Flutter framework and Dart programming language. It is designed to increment a counter each time a button is pressed.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assignment 3: Fetching Data from a REST API
Objective: Fetch and display data from a REST API.
Tasks:
1. Find a public REST API (e.g., JSONPlaceholder).
2. Create a new screen in your Flutter app that fetches a list of items from RESTAPI.
3. Display the fetched data in a ListView.
4. Use GetX for state management of the data fetching process.

about: In this task i have use random rest API that i found on the internet, this API generate 100 random data about users. to get the data use http protocell to get the data in this assessment i have use Model to customize data that API provide and display them accordingly.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assignment 4: Offline Capabilities with Local Storage
Objective: Implement offline capabilities using local storage in your Flutter app.
Tasks:
1. Create a screen that fetches data from a REST API and displays it.
2. Implement functionality to cache the fetched data locally using a local database(e.g., Hive or SQFlite).
3. Ensure the app can display the cached data when offline.
4. Use GetX to manage the state of the data and offline capabilities.


about: this is the saccule of assessment 3, I'm saying that because after get data from rest API assessment 3, it save it as offline data and can be access offline, and i have use sqflite as offline storage other than that i have use same theory as assessment 3 to build this app

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Assignment 5: Third-Party API Integration
Objective: Integrate a third-party API into your Flutter app.
Tasks:
1. Choose a third-party API (e.g., OpenWeatherMap for weather data).
2. Create a screen that fetches data from the chosen API.
3. Display the fetched data in a user-friendly manner (e.g., weather information with icons and descriptions).
4. Ensure the integration uses GetX for state management.
Deliverables:
● A GitHub repository with the updated Flutter project.
● Screenshots or a screen recording showing the third-party API data being fetchedand displayed.


about: As third-party API i have use open weather API that i get from their website, although it is possible to add many feature but i try to keep it as simple as possible, in this screen I have use a specific location and show its weather data in a  user-friendly manner.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assignment 6: Location-Based Services and Notifications
Objective: Integrate Google Maps into your Flutter app.
Tasks:
1. Set up Google Maps in your Flutter project (including API key configuration).
2. Create a screen with a Google Map widget.
3. Integrate Google Maps and display the user's current location.
4. Allow users to set geofences on the map.
5. Use background services to monitor geofence crossings.
6. Allow users to add markers to the map by tapping on it.
7. Use GetX to manage the state of the markers

about: In this Assignment i have use location service API to show map view and get user location to show it, although it required some permission from user to accessit, in the screen user can see their location and add marker as they want.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assignment 7: Push Notifications and Firebase Configuration
Objective: Send push notification to register users with FCM into your Flutter app.
Part 1: Set Up Firebase Project
1. Create a Firebase Project:
● Go to the Firebase Console.
● Create a new project and follow the setup wizard.
2. Add Your App to the Firebase Project:
● Register your app (both Android and iOS if needed).
● Download the google-services.json (for Android) andGoogleService-Info.plist (for iOS) files and place them in the appropriate directories in your Flutter project.
3. Enable Firebase Cloud Messaging
● In the Firebase Console, navigate to Cloud Messaging and enable it.
4. Send Push Notification Dynamically

about: In this Assignment i have implement FCM in this application although it require some permission from user but you will gat notification even if your app is suspended or remove from background.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


