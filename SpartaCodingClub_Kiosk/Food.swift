//
//  Food.swift
//  SpartaCodingClub_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

// food protocol
protocol Food {
    var name: String { get }
    var price: Int { get }
    var description: String { get }
    
    func displayInfo() -> String
}
