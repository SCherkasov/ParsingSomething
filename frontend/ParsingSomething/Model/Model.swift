//
//  Model.swift
//  ParsingSomething
//
//  Created by Stanislav Cherkasov on 5/26/19.
//  Copyright © 2019 Stanislav Cherkasov. All rights reserved.
//

import UIKit

struct RadioStation {
  let nameStation: String
  let imageStation: UIImage
  let urlStation: String
  let currentIndexStation: Int
}

class Hardvare {
  
  var array = [RadioStation]()
  
  let blackStarRadio = RadioStation(
    nameStation: "BLACK STAR RADIO",
    imageStation: UIImage(named: "bsr")!,
    urlStation: "http://blackstarradio.hostingradio.ru:8024/blackstarradio128.mp3?5ba7f47b", currentIndexStation: 0)
  
  let sax4love = RadioStation(
    nameStation: "Sax4Love",
    imageStation: UIImage(named: "s4l")!,
    urlStation: "http://sc-sax4ever.1.fm:10148/?2fa5'", currentIndexStation: 1)
  
  let europaPlusUrban = RadioStation(
    nameStation: "ЕВРОПА ПЛЮС: URBAN",
    imageStation: UIImage(named: "epu")!,
    urlStation: "http://eprnb128server.streamr.ru:8061/eprnb128?2169f44a", currentIndexStation: 2)
  
  let studio21 = RadioStation(
    nameStation: "STUDIO 21",
    imageStation: UIImage(named: "st_21")!,
    urlStation: "http://icecast-studio21.cdnvideo.ru/S21_1?0458", currentIndexStation: 3)
  
  let zaycevFmHipHop = RadioStation(nameStation: "ЗАЙЦЕВ FM: ХИП-ХОП", imageStation: UIImage(named: "zcvhph")!, urlStation: "http://zaycevfm.cdnvideo.ru/ZaycevFM_rnb_128.mp3?85c0", currentIndexStation: 4)
  
  let zaycevFmRap = RadioStation(nameStation: "ЗАЙЦЕВ FM: RAP", imageStation: UIImage(named: "zcvrap")!, urlStation: "https://zaycevfm.cdnvideo.ru/ZaycevFM_rap_256.mp3?e539", currentIndexStation: 5)
  
  let dfm = RadioStation(nameStation: "DFM: РЭПЧИКЕ", imageStation: UIImage(named: "dfm")!, urlStation: "https://dfm-nrp.hostingradio.ru/nrp96.aacp?2666768f", currentIndexStation: 6)
  
  let hitFmUrban = RadioStation(nameStation: "РАДИО ХИТ FM: URBAN", imageStation: UIImage(named: "htfmurbn")!, urlStation: "https://hitfm-urban.hostingradio.ru/urban96.aacp?bd602a1f", currentIndexStation: 7)
  
  let radiorecordBlack = RadioStation(nameStation: "RADIO RECORD: BLACK", imageStation: UIImage(named: "rcrdblack")!, urlStation: "http://air.radiorecord.ru:805/yo_320?a1ff", currentIndexStation: 8)
  
  let radioRecordRapHits = RadioStation(nameStation: "RADIO RECORD: RAP HITS", imageStation: UIImage(named: "rrec")!, urlStation: "http://air.radiorecord.ru:805/rap_320?df00", currentIndexStation: 9)
  
  let radioRecordRapClassics = RadioStation(nameStation: "RADIO RECORD: RAP CLASSICS", imageStation: UIImage(named: "recrap")!, urlStation: "http://air.radiorecord.ru:805/rapclassics_320?ea3c", currentIndexStation: 10)
  
  let radioYesenBit = RadioStation(nameStation: "РАДИО ЯСЕНБИТ", imageStation: UIImage(named: "yasenbit")!, urlStation: "http://radio.yasenbit.net:8000/yasenbit128k?1f47", currentIndexStation: 11)
  
  let royalRadioUrban = RadioStation(nameStation: "ROYAL RADIO: URBAN", imageStation: UIImage(named: "royalradio")!, urlStation: "http://185.39.195.90:8000/royal_urban?4cce", currentIndexStation: 12)
  
  let radioRapLive = RadioStation(nameStation: "РАДИО RAP LIVE: РУССКИЙ РЭП", imageStation: UIImage(named: "raplive")!, urlStation: "http://radio.dline-media.com/rap_live_radio128?cc2d", currentIndexStation: 13)
  
  let rpr = RadioStation(nameStation: "RPR - РАДИО ПРАВИЛЬНОГО РЭПА", imageStation: UIImage(named: "rpr")!, urlStation: "http://rpr-stream.pp.ua:8005/rpr?39b0", currentIndexStation: 14)
  
  let gtronicRadio = RadioStation(nameStation: "GTRONICRADIO", imageStation: UIImage(named: "gtronicrdo")!, urlStation: "http://192.96.205.59:7660/;stream/1", currentIndexStation: 15)
  
  let dirtySouthRadio = RadioStation(nameStation: "DIRTY SOUTH RADIO", imageStation: UIImage(named: "dsr")!, urlStation: "http://192.211.51.158:8010/;stream/1", currentIndexStation: 16)
  
  let dilemaRadio = RadioStation(nameStation: "DILEMARADIO", imageStation: UIImage(named: "dilemar")!, urlStation: "http://192.99.39.108:7649/;stream/1", currentIndexStation: 17)
  
  let babyRadio = RadioStation(nameStation: "90S BABY RADIO", imageStation: UIImage(named: "babyr")!, urlStation: "http://192.99.41.102:5816/;stream/1", currentIndexStation: 18)
  
  func appendsStations() {
    
    array.append(contentsOf: [europaPlusUrban, studio21, zaycevFmHipHop, zaycevFmRap, dfm, hitFmUrban, blackStarRadio, radiorecordBlack, radioRecordRapHits, radioRecordRapClassics, radioYesenBit, royalRadioUrban, radioRapLive, rpr, gtronicRadio, dirtySouthRadio, dilemaRadio, babyRadio])
  }
  
//  func getIndexStation() {
//    var indexStation = 0
//    for station in array {
//      indexStation = station.currentIndexStation
//      print("index in created unction is\(indexStation)")
//    }
//  }
  
}





