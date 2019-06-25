//
//  RadioTableViewController.swift
//  ParsingSomething
//
//  Created by Stanislav Cherkasov on 5/25/19.
//  Copyright © 2019 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class RadioTableViewController: UITableViewController {
  
  let radioStations = Hardvare()
  var stationPlayingNow = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let nib = UINib(nibName: "ChartTableViewCell", bundle: nil)
    
    tableView.register(nib, forCellReuseIdentifier: "cell")
    
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "",
                                                       style: .plain,
                                                       target: nil,
                                                       action: nil)
    
    navigationController?.navigationBar.tintColor = UIColor.white
    
    navigationController?.navigationBar.topItem?.title = "Rap/Hip-Hop/R&B"
    
    navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont(name: "Marker Felt", size: 21)!]
    self.navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont(name: "Marker Felt", size: 40)!]
  
    radioStations.appendsStations()
    
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = UITableView.automaticDimension
    
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    
    return 1
  }
  
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    
    return radioStations.array.count
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                             for: indexPath) as! ChartTableViewCell
    
    let sequense = radioStations.array[indexPath.row]
    cell.nameRadioStation.text = sequense.nameStation
    cell.imageRadioStation.image = sequense.imageStation
    cell.selectionStyle = .none
    return cell
  }
  
  // MARK: - Table view delegate
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
  
  override func tableView(_ tableView: UITableView,
                          didSelectRowAt indexPath: IndexPath) {
    
    stationPlayingNow = indexPath.row
    
    // animated transition
    let transition: CATransition = CATransition()
    transition.duration = 0.5
    transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
    transition.type = CATransitionType.fade
    self.navigationController!.view.layer.add(transition, forKey: nil)
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
    if let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
      as? ViewController
    {
      
      // passing data
      let sequense = radioStations.array[indexPath.row]
      
      let imageRSN = sequense.imageStation
      let nameRSN = sequense.nameStation
      let linkRSN = sequense.urlStation
      let indexRSN = sequense.currentIndexStation
      vc.transitImage = imageRSN
      vc.transitName.text = nameRSN
      vc.transitURL = linkRSN
      vc.indexStation = indexRSN
      vc.indexStation = stationPlayingNow
      
      self.navigationController?.pushViewController(vc, animated: false)
    }
  }
  
}
