//
//  Information.swift
//  SwipeBite-NC1-Felicia
//
//  Created by Felicia Graciella on 17/05/23.
//

import SwiftUI

struct Information: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Instruction")
                .fontWeight(.bold)
                .font(.system(size:24))
                .foregroundColor(.white)
            
            
            Text("Swipe right to like")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.top)
            Text("Swipe left to dislike")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                
            
            Text("It will show the recommendation based on your liked food")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Button(action: { dismiss() }) {
                Text("Got it!")
            }
            .font(.headline)
            .tint(Color.white)
            .foregroundColor(Color.yellow)
            .buttonStyle(.borderedProminent)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(Color.sbyellow)
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
