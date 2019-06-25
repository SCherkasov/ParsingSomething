//
//  ViewController.swift
//  ParsingSomething
//
//  Created by Stanislav Cherkasov on 5/25/19.
//  Copyright © 2019 Stanislav Cherkasov. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, LoadDelegate {
 
  @IBOutlet var playButtonOutlet: UIButton!
  @IBOutlet var nameOfRadioLabel: UILabel!
  @IBOutlet var imageOoRadio: UIImageView!
  @IBOutlet var squere: UIView!
  @IBOutlet var topView: UIView!
  
  var player: AVPlayer?
  
  var transitImage = UIImage()
  var transitName = UILabel()
  var transitURL = ""
  var indexStation = Int()
  
  let radioStations = Hardvare()
  var loadService = LoadService()

  var playBool: Bool = true {
    didSet {
      if playBool == true {
        playButtonOutlet.setBackgroundImage(UIImage(named: "pause"), for: .normal)
        player?.play()
      } else {
        playButtonOutlet.setBackgroundImage(UIImage(named: "play"), for: .normal)
        player?.pause()
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
   setupElements()
    
    loadService.delegate = self
  }
  
  func loadRadio(radioURL: String) {
    self.transitURL = radioURL
    player?.play()
  }
  
  func setupElements() {
    squere.layer.cornerRadius = squere.bounds.size.width / 2
    squere.clipsToBounds = true
    
    imageOoRadio.image = transitImage
    nameOfRadioLabel.text = transitName.text
    playButtonOutlet.setBackgroundImage(UIImage(named: "pause"), for: .normal)
    
    squere.layer.masksToBounds = true
    squere.layer.borderWidth = 1.5
    squere.layer.borderColor = UIColor.white.cgColor
   
    navigationController?.navigationBar.tintColor = UIColor.white
    self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "◁", style: .plain, target: self, action: #selector(backTapped(sender:)))
    
  }
// animated transition back button item
  @objc func backTapped(sender: UIBarButtonItem) {
    let transition: CATransition = CATransition()
    transition.duration = 0.5
    transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
    transition.type = CATransitionType.fade
    self.navigationController!.view.layer.add(transition, forKey: nil)
    navigationController?.popViewController(animated: false)
  }
  
  @IBAction func playAction(_ sender: UIButton) {
    
    playBool = !playBool
  }
  
  @IBAction func nextStation(_ sender: UIButton) {
    indexStation += 1
    print("hahahahahahah\(indexStation)")
  }

  @IBAction func previousStation(_ sender: UIButton) {
  }
  
}

