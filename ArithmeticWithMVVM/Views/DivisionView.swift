//
//  ContentView.swift
//  ArithmeticWithMVVM
//
//  Created by kim heejun on 2/21/25.
//

import SwiftUI

struct DevideView: View {
    // MARK: Stored properties
     
    // Holds the view model, to track current state of
    // data within the app
    @State var viewModel = DivisionViewModel()
     
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // INPUT
            TextField("dividend", text: $viewModel.providedDividend)
            TextField("divisor", text: $viewModel.providedDivisor)
            
            // OUTPUT
            if let power = viewModel.division {
                Text("Result is: \(Division.result)")
            }
            Text(viewModel.recoverySuggestion)
     
        }
        .padding()
    }
}

#Preview {
    DevideView()
}
