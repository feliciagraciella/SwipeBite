//
//  Recommendations.swift
//  SwipeBite-NC1-Felicia
//
//  Created by Felicia Graciella on 16/05/23.
//

import SwiftUI

struct Recommendations<Model>: View where Model: TextImageProvider & Hashable & Identifiable {
    let recommendations: [Model]
    
    var body: some View {
        VStack {
            HStack {
                Text("Recommendations")
                    .fontWeight(.bold)
                    .font(.system(size:24))
                    .foregroundColor(Color.sbred)
                Spacer()
            }
            .padding(.horizontal)
            
            if !recommendations.isEmpty {
                VStack {
                    Spacer()
                    
                    ScrollView(.horizontal) {
                        LazyHStack(alignment: .center, spacing: 12.0) {
                          ForEach(recommendations) { item in
                            SmallCard(model: item)
                          }
                        }
                        .padding(.horizontal)
                    
                    Spacer()
                    }
                }
                
            } else {
                HStack {
                  Spacer()

                  VStack {
                      Spacer()
                      
                    Image("bite")
                          .resizable()
                          .imageScale(.large)
                          .frame(width: 40, height: 40)

                    Text("Nothing yet!")
                          .foregroundColor(Color.sborange)
                          .fontWeight(.semibold)
                      .multilineTextAlignment(.center)
                      .font(.callout)
                      
                      Spacer()
                  }
                  .foregroundColor(.secondary)

                  Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 32)
              }
            
        }
    }
}

struct Recommendations_Previews: PreviewProvider {
    static var previews: some View {
        Recommendations(
            recommendations: [Food.origin]
        )
    }
}
