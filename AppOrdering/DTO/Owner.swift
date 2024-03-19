//
//  Owner.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - Owner
struct Owner: Codable {
    let id: Int?
    let name, lastname, email: String?
    let loginType: Int?
    let socialID, photo, birthdate: String?
    let phone, cellphone: String?
    let cityID, dropdownOptionID: Int?
    let address, addressNotes, zipcode: String?
    let location: LocationElement?
    let level, languageID: Int?
    let pushNotifications, busy, available, enabled: Bool?
    let createdAt, updatedAt: String?
    let middleName: String?
    let secondLastname: String?
    let countryPhoneCode: String?
    let priority: Int?
    let phoneVerified, emailVerified, driverZoneRestriction: Bool?
    let settings: Settings?
    let loyaltyLevelPoints: Int?
    let countryCode: String?
    let sessionStrategy: String?
    let platform: String?
    let monoSession: Bool?
    let pivot: OwnerPivot?
    
    enum CodingKeys: String, CodingKey {
        case id, name, lastname, email
        case loginType = "login_type"
        case socialID = "social_id"
        case photo, birthdate, phone, cellphone
        case cityID = "city_id"
        case dropdownOptionID = "dropdown_option_id"
        case address
        case addressNotes = "address_notes"
        case zipcode, location, level
        case languageID = "language_id"
        case pushNotifications = "push_notifications"
        case busy, available, enabled
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case middleName = "middle_name"
        case secondLastname = "second_lastname"
        case countryPhoneCode = "country_phone_code"
        case priority
        case phoneVerified = "phone_verified"
        case emailVerified = "email_verified"
        case driverZoneRestriction = "driver_zone_restriction"
        case settings
        case loyaltyLevelPoints = "loyalty_level_points"
        case countryCode = "country_code"
        case sessionStrategy = "session_strategy"
        case platform
        case monoSession = "mono_session"
        case pivot
    }
}
