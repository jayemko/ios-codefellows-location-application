CoreLocation & MapKit
============================
- Create a new Xcode project, add the MapKit and CoreLocation frameworks to your project

- Add some points of interest to your map using your own subclass of MKAnnotation

- Get the user's current location and then display the points of interest near them using MKPinAnnotation or your own custom MKAnnotationView subclass

- Add a button to your interface with a corresponding IBAction method in your code to update the user's current location and center & zoom the map based on the current location

BONUS:

- Add a text field where a user can input any address and have the map zoom to that location and display pins near the user-supplied location

- Allow a user to create a new map pin by long-pressing anywhere on the map

- Allow the user to toggle between overhead map view (up = north) and compass view (north = magnetic north, based on device orientation)

**Hint - there is a built-in sub-class of UIBarButtonItem in MapKit that will do this for you.

Questions:

What privacy concerns/permissions must you account for when using MapKit and CoreLocation?
How do you add custom Lat/Lon coordinates to your app for testing?
Map data from MapKit is provided by _____________ in iOS 5.1 and earlier and is provided by _______________ in later versions of iOS