//
//  OnboardingView.swift
//  Restart
//
//  Created by Smetana, Ryan on 11/30/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        } //: VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
