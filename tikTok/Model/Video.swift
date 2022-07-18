//
//  Video.swift
//  tikTok
//
//  Created by 大和田一裕 on 2022/07/18.
//

import Foundation
import SwiftUI
import AVFoundation

struct Video: Identifiable {
    var id: Int
    var player: AVPlayer
    var replay: Bool
}
