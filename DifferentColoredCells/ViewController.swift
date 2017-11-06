//
//  ViewController.swift
//  DifferentColoredCells
//
//  Created by vignesh on 8/31/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    func randomUIColor(alpha:CGFloat!)-> UIColor
    {
        return  UIColor.init(red:(CGFloat(arc4random_uniform(256))/255.0), green:CGFloat(arc4random_uniform(256))/255.0, blue: (CGFloat(arc4random_uniform(256))/255.0), alpha: alpha)
    }
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorcell", for: indexPath) as! coloredCell
        
        cell.textLabel?.text = "Row count \(indexPath.row)"
        cell.backgroundColor = randomUIColor(alpha: 0.8)
        return cell
    }
}

