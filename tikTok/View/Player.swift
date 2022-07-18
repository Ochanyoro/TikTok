//
//  Player.swift
//  tikTok
//
//  Created by 大和田一裕 on 2022/07/18.
//

import Foundation
import SwiftUI
import AVKit

struct PlayerView: View {
    
    @Binding var data: [Video]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0 ..< self.data.count) { index in
                ZStack {
                    Player(player: data[index].player)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .offset(y: -7)
                }
                .onAppear {
                    self.data[index].player.play()
                }
            }
        }
    }
}


struct Player: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        return view
    }
    
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
    
}
