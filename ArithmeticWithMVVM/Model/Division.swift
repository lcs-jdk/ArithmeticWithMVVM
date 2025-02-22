//
//  Devide.swift
//  ArithmeticWithMVVM
//
//  Created by kim heejun on 2/21/25.
//

import Foundation

struct Division {
    //MARK: Stored Properties
    var dividend: Int
    var divisor: Int

    
    //MARK: Computed Properties
    var quotient: Int {
        return dividend / divisor
    }
    
    var remainder: Int {
        return dividend % divisor
    }
    
    
}
