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
            Gauge(value: current , in: minValue...maxValue) {
                //Text("BPM")
            } currentValueLabel: {
                if (current >= minValue && current <= maxValue){
                    Text("\(Int(current))")
                }else if (current < minValue){
                    Text("\(Int(minValue))")
                }else{
                    Text("\(Int(maxValue))")
                }
            } minimumValueLabel: {
                Text("\(Int(minValue))")
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
            }
            .gaugeStyle(CircularGaugeStyle(tint: gradient))
        } else {
            // Fallback on earlier versions
        }
        //.gaugeStyle(.circular)
       // .gaugeStyle(.Body)
    }
}


