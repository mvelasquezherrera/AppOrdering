//
//  Settings.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Settings
struct Settings: Codable {
    let email, notification, sms: Email?
}
