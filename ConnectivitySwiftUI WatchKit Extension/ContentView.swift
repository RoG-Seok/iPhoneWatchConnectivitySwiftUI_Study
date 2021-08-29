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
    var GaugeminValue = 0.0
    var GaugemaxValue = 100.0
    
    
    
   
    var body: some View {
        VStack{
            
            HStack{
                Text("🔒")
                Text("🔒")
                Text("🔒")
            }
           // Text("iPhone: \(self.model.messageText)")
            Text("Scroll: \(Int(scrollAmonut) % 360)").focusable(true).digitalCrownRotation($scrollAmonut).font(.caption)
            
        ZStack{
            
            Image("lock_bg").resizable().frame(width: 120, height: 120)
            
                Image("lock_handle")
                             .resizable()
                             .frame(width: 120, height: 120)
                    .rotationEffect(.degrees(scrollAmonut * 0.25))
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
