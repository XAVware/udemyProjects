//
//  Honeymoon
//
//  Created by Smetana, Ryan on 11/26/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(Color.pink)
  }
}
