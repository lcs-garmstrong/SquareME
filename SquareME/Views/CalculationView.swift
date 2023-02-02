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
