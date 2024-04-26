//
//  ChoosingDrinksView.swift
//  latte-art
//
//  Created by Reza Athallah Rasendriya on 25/04/24.
//

import SwiftUI

struct ChoosingDrinksView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.right")
                })
                
            }
            .padding(.trailing, 25.0)
            
            Spacer()
                
            HStack {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Circle()
                        .stroke(.red, lineWidth: 5)
                        .fill(.brown)
                        .frame(width: 75, height: 75)
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Circle()
                        .stroke(.red, lineWidth: 5)
                        .fill(.black)
                        .frame(width: 75, height: 75)
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Circle()
                        .stroke(.red, lineWidth: 5)
                        .fill(.green)
                        .frame(width: 75, height: 75)
                })
                Spacer()
            }
        }
    }
    
    
}

#Preview {
    ChoosingDrinksView()
}
