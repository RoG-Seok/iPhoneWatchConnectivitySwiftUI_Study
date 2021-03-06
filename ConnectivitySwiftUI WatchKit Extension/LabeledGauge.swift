//
//  File.swift
//  ConnectivitySwiftUI WatchKit Extension
//
//  Created by seok yun on 2021/08/22.
//  Copyright © 2021 Евгений Басистый. All rights reserved.
//

import Foundation
import SwiftUI

struct LabeledGauge: View {
    @Binding var current :Double
    var minValue = 0.0
    var maxValue = 170.0
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])

    var body: some View {
        if #available(watchOSApplicationExtension 7.0, *) {
            let dotvalue = current * 0.25
            
        
            
            Gauge(value: dotvalue , in: minValue...maxValue) {
                //Text("password")
            }currentValueLabel: {
                if (dotvalue >= minValue && dotvalue <= maxValue){
                    Text("\(Int(dotvalue))")
                }else if (dotvalue < minValue){
                    Text("\(Int(minValue))")
                }else{
                    Text("\(Int(maxValue))")
                }
            } /*minimumValueLabel: {
                Text("\(Int(minValue))")
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
            }*/
            .gaugeStyle(CircularGaugeStyle(tint: gradient))
        } else {
            // Fallback on earlier versions
        }
        //.gaugeStyle(.circular)
       // .gaugeStyle(.Body)
    }
    struct LabeledGauge_Previews: PreviewProvider {
        @ObservedObject static  var model = ViewModelWatch()
        // 디지털크라운 회전 수치
        @State static var scrollAmonut = 0.0 //current
        static var previews: some View {
            LabeledGauge(current: $scrollAmonut)
        }
    }
}


