//
//  ViewController.swift
//  array
//
//  Created by Apple on 16/01/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    let deck: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9","10", "11","12","13","14","15","16","17","18","19","20"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btn_ok(_ sender: UIButton) {
        var newArray = deck.chunked(by: deck.count/3)
      print(newArray)
           print(newArray[0])
           print(newArray[1])
         //  print(newArray[2])
       // print(newArray[3])
        if newArray.count == 3
        {
             print(newArray[2])
        }
        else
        {
            newArray[2].append(contentsOf: newArray[3])
        print(newArray[2])
        }
      /*  let lastElement = newArray.last
        print(lastElement!)
        if lastElement?.count == 1 && lastElement?.count == 2
        {
            print(newArray[2])
        }
        else
        {
            newArray[2].append(contentsOf: newArray[3])
            print(newArray[2])
            
        }*/
    }
}
extension Array {
    func chunked(by distance: IndexDistance) -> [[Element]] {
        let indicesSequence = stride(from: startIndex, to: endIndex, by: distance)
        let array: [[Element]] = indicesSequence.map {
            let newIndex = $0.advanced(by: distance) > endIndex ? endIndex : $0.advanced(by: distance)
            return Array(self[$0 ..< newIndex])
        }
        return array
    }
}
