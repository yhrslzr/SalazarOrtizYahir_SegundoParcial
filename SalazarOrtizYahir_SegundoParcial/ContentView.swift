//
//  ContentView.swift
//  SalazarOrtizYahir_SegundoParcial
//
//  Created by Yahir Salazar on 27/10/25.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State private var player: AVAudioPlayer?
    
    func playMusic() {
        guard let url = Bundle.main.url(forResource: "title", withExtension: "mp3") else {
            print("No se encontró la canción en los Assets")
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.numberOfLoops = -1 // loop infinito
            player?.play()
        } catch {
            print("Error al reproducir la canción: \\(error.localizedDescription)")
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("wallpaper")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .ignoresSafeArea()
                    .onAppear(){
                        playMusic()
                    }
                }
                    .foregroundStyle(.tint)
                    .overlay{
                        NavigationLink(destination: ObjectView()){
                            Text("Comenzar")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.yellow)
                                .offset(x: 0, y:160)
                        }
                    }
        }
        }
}

#Preview {
    ContentView()
}
