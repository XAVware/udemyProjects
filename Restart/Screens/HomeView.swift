//
//  HomeView.swift
//  Restart
//
//  Created by Smetana, Ryan on 11/30/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        } //: VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
