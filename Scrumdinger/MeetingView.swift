//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Ernest Eferetin on 9/19/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
       
        VStack {
            ProgressView(value: 5, total: 15)
            HStack{
                VStack(alignment: .leading) {
                    Text("Second Elapsed").font(.caption)
                    Label("300",systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }.accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }.accessibilityLabel("Next speaker")
            }
        }
    }
}
//struct MeetingView_Previews: PreviewProvider {
//    static var previews: some View {
//        MeetingView()
//    }
//}
#Preview {
    MeetingView()
}
