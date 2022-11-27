//
//  FooterView.swift
//  Honeymoon
//
//  Created by Smetana, Ryan on 11/26/22.
//

import SwiftUI

struct FooterView: View {
    
    //MARK: - Properties
    @Binding var showBookingAlert: Bool
    
    var body: some View {
        HStack {
           Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .regular))
            
            Spacer()
            
            Button {
                self.showBookingAlert.toggle()
            } label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            }
            .accentColor(Color.primary)
            
            
            Spacer()
            
            Image(systemName: "heart.circle")
                 .font(.system(size: 42, weight: .regular))
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    @State static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
