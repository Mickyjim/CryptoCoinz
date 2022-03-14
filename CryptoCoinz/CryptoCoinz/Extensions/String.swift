//
//  String.swift
//  CryptoCoinz
//
//  Created by Michael Favre on 11/03/2022.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
