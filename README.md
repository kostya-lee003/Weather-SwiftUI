# Weather-SwiftUI
Weather app SwiftUI 
Тестовое задание 


You need to create a simple native weather monitoring app. It should be capable of requesting the current weather from the weather API (available at api.openweathermap.org).

Technical specifications:

<img width="321" alt="Screenshot 2023-01-27 at 16 40 56" src="https://user-images.githubusercontent.com/72404363/215081298-9b8256d2-6ddd-49c9-8eb3-735eda7ba426.png">

According to the sketch, the screen should contain 3 blocks:

1. Search View in the toolbar (could be an expandable SearchView);
2. Main View, which should contain the currently selected location and its weather details;
3. TableView, where each row should show the latest data for its associated city.

There should be 2 options to select the location via the Search View:
1. Typing a location name in the SearchView;
2. Pressing a location button/icon in order to query the current geo position (Latitude / Longitude)

The temperature and location details should be parsed from the API response, stored in the local database and displayed on the Main View. Also, add a switch for toggling between Celsius and Fahrenheit. The switch should trigger an update of the degree type in all rows of the RecyclerView and in the Main View

The background color of the Main View should depend on the temperature: 
- Light blue for t < 10°C
- Orange for t from 10°C to 25°C
- Red for t > 25°C

The rows of the TableView should contain the date, temperature and location
data. Additionally, display all the temperature values.

Chart button on the rows that are associated with the location, which has been used for the weather requests more than once. Pressing the Chart Button should invoke another activity with a chart displaying all the temperature values.

Optional tasks:
1) Display also the min/max values near the graph (“Temp_min": 284.15, "temp_max": 287.15)
2) Create a filter for the graph output, based on the date range.
So that it could be possible to view only the weather info with regard to a certain period of time, like “from [12.02.2019 23:43] to [13.02.2019 11:27]”

Requirements:
1) Swift 4 and higher;
2) Xcode 10 and higher;
3) Must be compatible with all iPhone/iPad display sizes in portrait and landscape mode.
