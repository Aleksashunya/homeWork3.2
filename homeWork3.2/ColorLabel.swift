//
//  ColorLable.swift
//  homeWork3.2
//
//  Created by Александра Мельникова on 31.07.2021.
//

import SwiftUI

struct ColorLabel: View {
    
    let colorData: String
    
    var body: some View {
        Text("\(colorData)")
            .font(.caption)
            .foregroundColor(.black)
    }
}

struct ColorLabel_Previews: PreviewProvider {
    static var previews: some View {
        ColorLabel(colorData: "0")
    }
}
