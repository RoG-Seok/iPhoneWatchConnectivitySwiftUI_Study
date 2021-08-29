//
//  SafeGameView.swift
//  ConnectivitySwiftUI WatchKit Extension
//
//  Created by goboogie on 2021/08/29.
//  Copyright © 2021 Евгений Басистый. All rights reserved.
//

import SwiftUI

struct SafeGameView: View {
    @Binding var current:Double
    var body: some View {
        ZStack{
            
            Image("lock_bg").resizable().frame(width: 120, height: 120)
            
                Image("lock_handle")
                             .resizable()
                             .frame(width: 120, height: 120)
                    .rotationEffect(.degrees(current))
                
            }
            
        }
    
}

struct SafeGameView_Previews: PreviewProvider {
    @ObservedObject static  var model = ViewModelWatch()
    // 디지털크라운 회전 수치
    @State static var scrollAmonut = 0.0 //current

    
    static var previews: some View {
        SafeGameView(current : $scrollAmonut)
    }
}
