//
//  ColorView.swift
//  homeWork3.2
//
//  Created by Александра Мельникова on 31.07.2021.
//

import SwiftUI

struct ColorView: View {
    
    var redColorValue: Double
    var greenColorValue: Double
    var blueColorValue: Double
    
    var body: some View {
        
        Rectangle()
            .frame(height: 120)
            .overlay(
                RoundedRectangle(cornerRadius: 3)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.white)
            )
            .foregroundColor(Color(
                red: redColorValue,
                green: greenColorValue,
                blue: blueColorValue,
                opacity: 1
            ))
            .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColorValue: 0, greenColorValue: 0, blueColorValue: 0)
    }
}
