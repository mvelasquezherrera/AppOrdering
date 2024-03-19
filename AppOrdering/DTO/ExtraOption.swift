//
//  ExtraOption.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import Foundation

// MARK: - ExtraOption
struct ExtraOption: Codable {
    let id, extraID: Int?
    let name: String?
    let image: String?
    let conditioned: Bool?
    let min, max, rank: Int?
    let withHalfOption, allowSuboptionQuantity, limitSuboptionsByMax, enabled: Bool?
    let suboptions: [Suboption]?

    enum CodingKeys: String, CodingKey {
        case id
        case extraID = "extra_id"
        case name, image, conditioned
        case min, max, rank
        case withHalfOption = "with_half_option"
        case allowSuboptionQuantity = "allow_suboption_quantity"
        case limitSuboptionsByMax = "limit_suboptions_by_max"
        case enabled
        case suboptions
    }
}
