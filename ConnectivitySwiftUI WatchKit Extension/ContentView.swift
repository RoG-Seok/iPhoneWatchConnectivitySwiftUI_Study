//
//  ContentView.swift
//  ConnectivitySwiftUI WatchKit Extension
//
//  Created by Евгений Басистый on 12.07.2020.
//  Copyright © 2020 Евгений Басистый. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ViewModelWatch()
    // 디지털크라운 회전 수치
    @State var scrollAmonut = 0.0 //current
   
    var body: some View {
        ZStack{
            
            VStack{
                Text("iPhone: \(self.model.messageText)")
                Text("Scroll: \(Int(scrollAmonut))").focusable(true).digitalCrownRotation($scrollAmonut).padding()
                
                LabeledGauge(current: $scrollAmonut, minValue: 0.0,  maxValue: 5000.0)
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
