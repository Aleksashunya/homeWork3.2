//
//  ColorValueTF.swift
//  homeWork3.2
//
//  Created by Александра Мельникова on 31.07.2021.
//

import SwiftUI

struct ColorValueTF: View {
    
    @Binding var colorValue: String
    
    var body: some View {
        TextField("0-255", text: $colorValue)
            .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            .font(.caption)
            .background(Color.white)
            .frame(width: 40)
            .cornerRadius(5.0)
            .multilineTextAlignment(.trailing)
    }
}

struct ColorValueTF_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueTF(colorValue: .constant("100"))
    }
}
