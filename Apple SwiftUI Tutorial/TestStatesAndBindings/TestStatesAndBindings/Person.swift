//
//  DataBase.swift
//  TestStatesAndBindings
//
//  Created by Dhurian Vitoldas on 07/09/2023.
//

import Foundation
import SwiftUI

struct Person : Identifiable {
    var id: UUID
    var idNumber: Int
    var idName: String
    var idSurname: String
    init(idNumber: Int, idName: String, idSurname: String) {
        self.id = UUID()
        self.idNumber = idNumber
        self.idName = idName
        self.idSurname = idSurname
    }
}
