# Inventory Management App

This project is a Flutter inventory management app that uses Firebase Firestore for cloud storage and real-time updates. Users can add, edit, delete, and view inventory items, and the interface updates automatically using Firestore streams.

## Features
- Add new inventory items
- Edit existing inventory items
- Delete inventory items
- Real-time updates with StreamBuilder
- Form validation for empty and invalid numeric fields
- Search bar to filter inventory items
- Delete confirmation dialog to prevent accidental removal

## Technologies Used
- Flutter
- Dart
- Firebase Core
- Cloud Firestore

## Project Structure
- `main.dart` initializes Firebase and starts the app
- `item.dart` defines the Item model with `toMap()` and `fromMap()`
- `firestore_service.dart` handles Firestore CRUD operations
- `inventory_page.dart` contains the main UI and stream-based item display

## Enhanced Features
1. Search filter that lets the user quickly find items by name
2. Delete confirmation dialog for safer item removal

## How to Run
1. Clone the repository
2. Run `flutter pub get`
3. Run `flutterfire configure`
4. Make sure Firestore is enabled in Firebase
5. Run `flutter run`

## Testing Completed
The app was tested for:
- adding items
- editing items
- deleting items
- real-time updates
- validation errors
- empty state display
- search filtering
