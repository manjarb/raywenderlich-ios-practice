//
//  MenuViewController.swift
//  
//
//  Created by Varis Darasirikul on 7/11/21.
//

import UIKit

public class MenuViewController: UIViewController {
  
  // 1
  @IBOutlet public var tableView: UITableView! {
    didSet {
      tableView.dataSource = self
      tableView.delegate = self
    }
  }
  
  // 2
  private let items = ["Item 1", "Item 2", "Item 3"]
}
