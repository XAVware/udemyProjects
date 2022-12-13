//
//  ContentView.swift
//  Touchdown
//
//  Created by Smetana, Ryan on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
