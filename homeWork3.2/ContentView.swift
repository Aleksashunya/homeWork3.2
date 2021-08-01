//
//  ContentView.swift
//  homeWork3.2
//
//  Created by Александра Мельникова on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColorValue: Double = 0
    @State private var greenColorValue: Double = 0
    @State private var blueColorValue: Double = 0
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .yellow, .green]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            
            VStack{
                Text("Mix your own color")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                
                ColorView(redColorValue: redColorValue / 255,
                          greenColorValue: greenColorValue / 255,
                          blueColorValue: blueColorValue / 255)
                
                ColorSlider(colorValue: $redColorValue).accentColor(.red)
        
                ColorSlider(colorValue: $greenColorValue).accentColor(.green)
                
                ColorSlider(colorValue: $blueColorValue).accentColor(.blue)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil,
                   from: nil,
                   for: nil)
    }
}
