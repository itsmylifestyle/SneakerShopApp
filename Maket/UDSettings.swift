//
//  UDSettings.swift
//  Maket
//
//  Created by Айбек on 23.01.2023.
//

import Foundation
import SwiftUI

class UDSettings: ObservableObject {
    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "isOn") {
        didSet {
            UserDefaults.standard.set(self.isOn, forKey: "isOn")
        }
    }
}
