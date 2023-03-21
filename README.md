# NYCSchools

#### Intro :
This is a native app to provide information on NYC High schools. this app fetches data from the City of Newyork Api and displays a list of high schools name, location and phone number. The app also allows users to click on any of the school to view school's detail. The detail view also has an option to view SATs Results for a selected school. The app is implemented following MVVM architecture with UIKit and escaping closures for service call.

#### Quick start :
Using either a real device or a simulator, lunch the app and you will be presented with a list of Products and their prices. You can scroll up and down to see a full list of products. If you click on one of the product displayed on the list, you will be presented with a detail page containing product tittle and Product description.

#### Status :
- Implement the API calls using URLSession to retrieve the necessary data, parse JSON data with JSONDecoder, and display it in the app's user interface using UIKit.
- The app currenlty supports different iOS screen sizes and targets iOS 13 and above
- Writen unit tests using XCTest framework for the critical components such as data retrieval and parsing to ensure the app's reliability and maintainability.

#### What's included :
- 2 models, One for Schools and another one for Sats Results
- 2 ViewModels: one for NYCSchoolViewModel and one for NYCSchoolSatsResultViewModel
- Cells for SchoolTbleViewCell which allows us to display a list of school information
- a constant to hold our endpoint
- utility class to allow us to perform our service calls
- MockUrlSessin and an APImanagerTest to test our service calls
- We also have viewModelTests files to allow us to test our viewModels   
- Use dependency injection to connect the layers and ensure that they are independent of each other. This allows us to swap out dependencies without affecting other parts of the app.
- MVVM pattern, the view controller or view is responsible for displaying the UI, while the view model acts as an intermediary between the view and the domain layer. The view model retrieves data from the domain layer and formats it for display in the view. The view sends user interactions to the view model for processing.

#### Features :
- Display a list of NY City Schools with thier basic info,
- Click on any user to display a detail view of a selected school
- Displays Sats result for a selected school
