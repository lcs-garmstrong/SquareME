//
//  CalculationView.swift
//  SquareME
//
//  Created by Graeme Armstrong on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    //MARK: Stored properties
    
    // Keeps given input
        @State var inputGiven = ""
    
    //MARK: Computed properties
    
    // STEP TWO
    // Convert the input given into an optional double.
    var inputGivenAsOptionalDouble: Double? {
        
        // attempt to creat optional double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            return nil
        }
        
        // we have an actual double, so return in
        return inputGivenAsDouble
    }
    
    // take the input and format is for output
    var formattedOutputValue: String {
        
        // STEP THREE
        // see if we have a number to work with
        // get a non-optional Double
        guard let numberToSquare = inputGivenAsOptionalDouble else {
    
            return "Please enter a numeric value, such as: 5.0"
        }
        // we do have a number to work with so square it
        let squaredNumber = numberToSquare * numberToSquare
        
        // STEP FOUR
        // return the formatted number.
        return squaredNumber.formatted(.number.precision(.fractionLength(3)))
    }
    
    var body: some View {
        
        NavigationView{
            VStack {
                // STEP ONE
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                
                Text(formattedOutputValue)
                    .font(.largeTitle)
            }
            .navigationTitle("Square Me")
            .padding()
        }
    }
    
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}
