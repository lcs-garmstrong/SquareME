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
    
    // Convert the input given into an optional double.
    
    
    var inputGivenAsOptionalDouble: Double? {
        
        // attempt to creat optional double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            return nil
        }
        
        // we have an actual double, so return in
        return inputGivenAsDouble
    }
    
    var body: some View {
        
        NavigationView{
            VStack {
                TextField("5.5", text: $inputGiven)
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
