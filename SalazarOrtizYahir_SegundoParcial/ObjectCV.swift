//
//  ObjectCV.swift
//  SalazarOrtizYahir_SegundoParcial
//
//  Created by Yahir Salazar on 27/10/25.
//

import SwiftUI

struct ObjectCV: View {
    var image : String
    var name : String
    
    var body: some View {
        HStack {
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 100)
                .padding(.horizontal)
            
            VStack(alignment: .center, spacing: 0 ){
                Text(name)
                    .foregroundColor(Color.yellow)
                    .font(.title)
                    .padding(.bottom)
                HStack(){
                    Spacer()
                    Button(action: {
                        print("Has adquirido \(name)")
                    },
                           label:{
                    })
                }
            }
        }
        .background(Color.shop)
        .border(Color.white, width: 1)
        .onAppear(){
            print("\(name)")
        }
    }
}

struct ObjectCV_Previews: PreviewProvider {
    static var previews: some View {
        ObjectCV(image: "bomba", name: "Bombas")
    }
}

