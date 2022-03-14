//
//  UIApplication.swift
//  CryptoCoinz
//
//  Created by Michael Favre on 11/03/2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
