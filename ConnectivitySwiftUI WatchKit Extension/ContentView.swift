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
    @State var scrollAmonut = 0.0
    
    var body: some View {
        VStack{
            Text(self.model.messageText)
            Text("Scroll: \(scrollAmonut)").focusable(true).digitalCrownRotation($scrollAmonut)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
