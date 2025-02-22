//
//  DevisionViewModel.swift
//  ArithmeticWithMVVM
//
//  Created by kim heejun on 2/21/25.
//

import Foundation

@Observable
class DivisionViewModel {
    //MARK: Stored Properties
    var providedDividend: String
    var providedDivisor: String
    var recoverySuggestion: String
    // Holds the list of previously computed and evaluated powers
    var resultHistory: [Division] = []
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
    
    // MARK: Function(s)
    func saveResult() {
        
        // When there is a valid power based on user input...
        if let power = self.division {
            
            // ... save that evaluated power at the top of the history of
            // results
            //
            // NOTE: By inserting the newly evaluated power at the top of
            //       the array, we ensure the user sees
            //       the most recent result first.
            self.resultHistory.insert(power, at: 0)
        }
        
    }
}
