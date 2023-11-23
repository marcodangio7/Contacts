//
//  ToolBarView.swift
//  Lista contatti Apple
//
//  Created by Marco D'Angiò on 23/11/23.
//

import SwiftUI

struct ToolBarView: View {
    var body: some View {
       NavigationBarItem(
        leading: HStack{
            Button(action: {
                print("Tasto sinistro premuto")
            })
            Image(systemName: "numbersign")
            
            })
        })
    }
}

#Preview {
    ToolBarView()
}
