
# Vanilla Traceability
This app inspired from Figma https://www.figma.com/file/I935IG4G2BvXaeTxlUDSN4/Happy-poultry-Farm-(Community)?type=design&node-id=25-775&mode=design&t=H5V5Uf20fgpyFN5B-0 and modify by request feature.

![Screen_recording_20240115_154058-ezgif com-video-to-gif-converter](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/2a801502-4bef-4140-9906-9ccadd44118f)

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Application structure
After successful build, your application structure should look like this:
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```
### How to run?

- Run app
  ```
  flutter run
  ```

# Library Using
| Name                 | Description                                                                                                 | Link                                          |
|----------------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| cached_network_image | A flutter library to show images from the internet and keep them in the cache directory.                    | https://pub.dev/packages/cached_network_image |
| flutter_svg          | Draw SVG files using Flutter.                                                                               | https://pub.dev/packages/flutter_svg          |
| order_tracker        | A Flutter plugin for iOS and Android for order tracker same as flipkart order tracker ui.                   | https://pub.dev/packages/order_tracker        |
| intl                 | Provides internationalization and localization facilities                                                   | https://pub.dev/packages/intl                 |

### Screenshoot App
![login](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/ca57c443-770b-43a1-87b4-0c064939ab99)
![home](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/29de2fe0-7151-4925-ae0f-5615447beb12)
![contact](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/32cb0c3a-535b-4d08-b3fb-3d43b99f9706)
![message](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/dc7f7ca1-3b8d-4209-8273-1f7557c98a66)
![profile_and_balance](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/66245f69-5ccb-46fc-8b09-cfc852239e67)
![saved_order](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/d316b02f-6d3e-4ada-9bd8-c670628ac67d)
![shipping_detail](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/7dcd4e78-a3e6-43c6-bb8c-24fc816768cd)
![shipping_list](https://github.com/primajatnika27/vanilla-traceable/assets/51253537/5b84c80b-e6e1-47b4-a8ce-31c79a1a56a3)
