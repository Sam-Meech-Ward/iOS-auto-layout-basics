//
//  ViewController.swift
//  Layout
//
//  Created by Sam Meech-Ward on 2020-05-02.
//  Copyright © 2020 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var labelCenterConstraint: NSLayoutConstraint!
  
  @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let button = UIButton(type: .system)
    button.setTitle("Push Me", for: .normal)
    button.addTarget(self, action: #selector(buttonPushed), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(button)
    
    let leftConstraint = button.leadingAnchor.constraint(equalTo: view.leadingAnchor)
    leftConstraint.isActive = true
    let rightConstraint = button.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    rightConstraint.isActive = true
    let bottomConstraint = button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
    bottomConstraint.isActive = true
  
  }


  @objc func buttonPushed(_ button: UIButton) {
    if labelCenterConstraint.isActive == true {
      labelCenterConstraint.isActive = false
      labelTopConstraint.isActive = true
    } else {
      labelCenterConstraint.isActive = true
     labelTopConstraint.isActive = false
    }
  }
  
}

