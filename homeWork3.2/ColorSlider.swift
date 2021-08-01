//
//  ColorSlider.swift
//  homeWork3.2
//
//  Created by Александра Мельникова on 31.07.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var colorValue: Double
    
    @State private var  textFieldValue = "0"
    @State private var isError = false
    
    var body: some View {
        
        HStack{
            ColorLabel(colorData: String(lround(colorValue)))
            
            Slider(value: $colorValue,
                   in: 0...255,
                   step: 1)
                .onChange(of: textFieldValue,
                          perform: { value in
                            
                            if let doubleData = Double(value){
                                guard doubleData >= 0 && doubleData <= 255 else {
                                    isError = true
                                    textFieldValue = "0"
                                    return
                                }
                                colorValue = doubleData
                                
                            } else if value == "" {
                                return
                            } else {
                                isError = true
                                textFieldValue = "0"
                                return
                            }
                          }
                )
                .alert(isPresented: $isError,
                       content: {
                        Alert(title: Text("Wrong Format"),
                              message: Text("Please enter value from 0 to 255"),
                              dismissButton: .cancel(Text("OK")))
                       }
                )
            
            ColorValueTF(colorValue: $textFieldValue)
                .onChange(of: colorValue,
                          perform: { value in
                            textFieldValue = String(lround(value))
                          }
                )
        }
        .padding(EdgeInsets(top: 0,
                            leading: 16,
                            bottom: 0,
                            trailing: 16))
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(colorValue: .constant(100))
    }
}
