//
//  DevisionViewModel.swift
//  ArithmeticWithMVVM
//
//  Created by kim heejun on 2/21/25.
//

import Foundation

class DivisionViewModel {
    //MARK: Stored Properties
    var providedDividend: String
    var providedDivisor: String
    var recoverySuggestion: String
    
    //MARK: Computed Properties
    var division: Division? {
        
        //Check that the string in providedDividend can be converted in to Int
        guard let dividend = Int(providedDividend) else {
            recoverySuggestion = "Please enter an integer"
            
            return nil
            
        }
        //Check that the string in providedDividend can be converted in to Int
        
        guard let divisor = Int(providedDivisor) else {
            recoverySuggestion = "Please enter an integer"
            
            return nil
            
        }
        
        //Return an instance of the model
        if divisor == 0 {
            recoverySuggestion = "can not divided by 0"
            return nil
        
        } else {
            recoverySuggestion = ""
            return Division(dividend: dividend, divisor: divisor)
        }
    }
    

    
    //MARK: Initializer
    init(
        providedDividend: String = "",
        providedDivisor: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedDividend = providedDividend
        self.providedDivisor = providedDivisor
        self.recoverySuggestion = recoverySuggestion
    }
}
