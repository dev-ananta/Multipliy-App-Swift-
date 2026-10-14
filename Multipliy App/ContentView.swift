//
//  ContentView.swift
//  Multipliy App
//
//  Created by Anant Parikh on 9/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""

    var body: some View {
        Text("Multiply") // Title
            .font(.title)
            .bold()
        
        TextField("Enter a Number", text: $firstNumberTextField) // First Input
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30)
            .font(.body)
            .padding()
        
        Text("X") // Multiplication Sign
        
        TextField("Enter a Number", text: $secondNumberTextField) // Second Input
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30)
            .font(.body)
            .padding()
        
        Button("Calculate") { // Action Button
            if let firstNumber = Int(firstNumberTextField) {
                if let secondNumber = Int(secondNumberTextField) {
                    calculation = firstNumber * secondNumber
                    
                    if calculation == 64 {
                        imageName = "mario64"
                    } else if calculation % 2 == 0 {
                        imageName = "Even"
                    } else {
                        imageName = "Odd"
                    }
                }
            }
        }
        .padding()
        
        Text("\(calculation)") // Output
            .frame(width: 200, height: 30)
        
        Image(imageName) // Dynamic Image View
            .resizable()
            .frame(width: 100, height: 100)
            .aspectRatio(contentMode: .fit)
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
