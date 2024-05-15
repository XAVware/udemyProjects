## Introduction

Notes is a WatchOS app developed in Swift. It allows users to make, view, and delete notes from their Apple Watch. It utilizes a number of core functionalities, including SwiftUI Views and navigation, JSON file storage, and on-device app settings storage.

## Technologies Used

The app utilizes SwiftUI, Foundation and Combine.

- **SwiftUI** powers the application's UI. It utilizes `Scene`, `View`, and `AppStorage` objects to manage all visual components of the app.
- **Foundation** is used in order to get the current date and time, work with UUIDs and encode/decode notes to/from JSON.
- **Combine** framework is used to bind the UI to state variables. This allows SwiftUI to re-render relevant parts of the UI whenever a state variable is updated.

Key sections of code are as follows:

SwiftUI view for the header with conditional rendering based on provided prop:

```swift
struct HeaderView: View {
    var title: String = ""
    var body: some View {
        VStack {
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
        // Rest of code omitted for brevity
    }
}
```

JSON encoding/decoding with Foundation:

```swift
func save() {
    do {
        let data = try JSONEncoder().encode(notes)
        let url = getDocumentDirectory().appendingPathComponent("notes")
        try data.write(to: url)
    } catch { 
        print("Saving data has failed!") 
    }
}
```

Key-value storing with SwiftUI's `@AppStorage` property wrapper:

```swift
@AppStorage("lineCount") var lineCount: Int = 1
```

## Core Functionalities

The core functionality of the app is to allow users to create, view, change settings of, and delete notes.

**Notes Creation**: User can enter the text of a new note that is subsequently saved as a Note object, added to notes array and stored locally:

```swift
TextField("Add New Note", text: $text)
Button {
    guard text.isEmpty == false else { return }
    let note = Note(id: UUID(), text: text)
    notes.append(note)
    text = ""
    save()
} label: {
    Image(systemName: "plus.circle")
       .font(.system(size: 42, weight: .semibold))     
}
.fixedSize()
.buttonStyle(PlainButtonStyle())
.foregroundColor(.accentColor)
```

**Notes Deletion**: All notes are presented in a list from which they can be deleted:

```swift
List {
    ForEach(0 ..< notes.count, id: \.self) {
      ...
    } 
    .onDelete(perform: delete)
}
```

**Notes Settings**: The app has settings that allow the user to change the number of lines a note can have when presented in the list:

```swift
Slider(value: Binding(get: {self.value}, set: { (newValue) in
    self.value = newValue
    self.update()
}), in: 1...4, step: 1)
.accentColor(.accentColor)
```

