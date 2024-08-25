//
//  ContentView.swift
//  Bullseye
//
//  Created by Mary Musallam on 8/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisable: Bool = false
    var body: some View {
        VStack{
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
                .bold()

                
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button("Hit me") {
                print("Hello SwiftUI")
                self.alertIsVisable = true
            }
            .alert("Hello there!", isPresented:  $alertIsVisable) {
              Button("Awesome!") { }
            } message: {
              Text("This is my first pop-up")
            }
        }
        .padding()
    }
           
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 852, height: 393))
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}

