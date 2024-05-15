# Touchdown
 The goal of Touchdown was to create a E-commerce type of mobile app with a beautiful SwiftUI interface. The app offers functionality for product browsing, item detail viewing, shopping cart management, and more. 

## Technologies Used:

### SwiftUI: 
The views were created in SwiftUI. `EnvironmentObjects` were used with MVVM architecture to publish data as needed 

```swift
struct ContentView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                //...
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}
```
## Swift's JSONDecoder: 
Used to decode JSON data fetched from the server. Code snippet:

```swift
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //...
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode file from bundle")
        }
        return decodedData
    }
}
```

Other features:
1. **Homepage / Product listing**: The 'ContentView.swift' file provides the functionality for home view. It uses 'ProductItemView.swift' to populate the grid list of products.
2. **Product details**: In 'ProductDetailView.swift', it shows the details of each product including the price, description, sizes, and the ability to add items to the cart. 
3. **Carts**: The 'navigationBarView.swift' file shows a cart icon allowing shopping cart access.
4. **Decoding data from JSON**: Data from the product JSON file are decoded using Swift's inbuilt 'Decodable'. This is represented in the extension on Bundle 'CodableBundleExtension.swift'.



Touchdown is part of the Udemy course **SwiftUI + SwiftData Masterclass**.
