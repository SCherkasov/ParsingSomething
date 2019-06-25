//
//  LoadService.swift
//  ParsingSomething
//
//  Created by Stanislav Cherkasov on 6/25/19.
//  Copyright © 2019 Stanislav Cherkasov. All rights reserved.
//

import Foundation
import AVFoundation

protocol LoadDelegate {
  func loadRadio(radioURL: String)
}

class LoadService {
  
  var player: AVPlayer?
  var delegate: LoadDelegate?
  
  func loadRadio(radioURL: String) {
    
    guard let url = URL.init(string: radioURL) else { return }
    
    do {
      
      try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
      
      // playing audio even phone is locked
      try AVAudioSession.sharedInstance().setActive(true)
      let playerItem = AVPlayerItem.init(url: url)
      player = AVPlayer.init(playerItem: playerItem)
    }
    catch {
      
    }
    if let ld = self.delegate {
      ld.loadRadio(radioURL: radioURL)
    }
  }
}
