//
//  LocalState.swift
//  MilkyWay
//
//  Created by Saleh Masum on 27/10/2022.
//

import Foundation
import UIKit

public class LocalState {
    private enum Keys: String {
        case hasOnboarded
    }
    public static var hasOnboarded: Bool {
        get {
            UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}

struct AppConfig {
    static let appColor: UIColor = .systemTeal
}
