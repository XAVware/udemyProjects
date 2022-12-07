//
//  DevoteWidgetExtensionBundle.swift
//  DevoteWidgetExtension
//
//  Created by Smetana, Ryan on 12/7/22.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetExtensionBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidgetExtension()
        DevoteWidgetExtensionLiveActivity()
    }
}
