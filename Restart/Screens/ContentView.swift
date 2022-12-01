//
//  ContentView.swift
//  Restart
//
//  Created by Smetana, Ryan on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
