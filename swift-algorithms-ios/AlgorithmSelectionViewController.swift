//
//  AlgorithmSelectionViewController.swift
//  swift-algorithms-ios
//
//  Created by Andrew van Tonningen on 11/4/16.
//  Copyright © 2016 Andrew van Tonningen. All rights reserved.
//

import UIKit

class AlgorithmSelectionViewController: UIViewController {
    
    // Declare and initialize UI elements
    let titleLabel:UILabel = UILabel()
    let titleLabelContainer:UIView = UIView()
    let binarysearchButton:UIButton = UIButton()
    let quicksortButton:UIButton = UIButton()
    
    // Declare and initilialze useful constants
    let screenWidth:CGFloat = UIScreen.main.bounds.width
    let screenHeight:CGFloat = UIScreen.main.bounds.height
    let uniformHeight:CGFloat = 100
    let uniformWidth:CGFloat = 200
    let uniformCornerRadius:CGFloat = 3
    let uniformFontSize:CGFloat = 15

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the main view
        view.backgroundColor = UIColor.lightGray

        // Set up the title text field container
        
        // Set up the title text field
        
        // This frame provides a centered 200 unit wide UILabel, regardless of screen width
        // Element is also a fixed 25 units from the top of the screen
        titleLabel.frame = CGRect(x: (screenWidth-uniformWidth)/2, y: 25, width: uniformWidth, height: uniformHeight)
        titleLabel.text = "Please select an algorithm to test from the list below:"
        titleLabel.layer.cornerRadius = uniformCornerRadius
        titleLabel.font = UIFont.systemFont(ofSize: uniformFontSize)
        titleLabel.textColor = UIColor.white
        titleLabel.backgroundColor = UIColor.blue
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        titleLabel.drawText(in: CGRect(x: 15, y: 15, width: titleLabel.frame.size.height-30, height: titleLabel.frame.size.width-30))
        // Set up the quicksort button
        
        // This frame provides a horizontally centered 200 unit wide button, regardless of screen width
        // Element is also a fixed 50 units below the title label
        quicksortButton.frame = CGRect(x: (screenWidth-uniformWidth)/2, y: titleLabel.frame.maxY + 50, width: uniformWidth, height: uniformHeight)
        quicksortButton.backgroundColor = UIColor.blue
        quicksortButton.layer.cornerRadius = uniformCornerRadius
        quicksortButton.setTitle("Quick Sort", for: UIControlState.normal)
        quicksortButton.setTitle("Quick Sort", for: UIControlState.highlighted)
        
        // Set up the binary search button
        
        // This frame provides a horizontally centered 200 unit wide button, regardless of screen width
        // Element is also a fixed 25 units below the quick sort button
        binarysearchButton.frame = CGRect(x: (screenWidth-uniformWidth)/2, y: quicksortButton.frame.maxY + 25, width: uniformWidth, height: uniformHeight)
        binarysearchButton.backgroundColor = UIColor.blue
        binarysearchButton.layer.cornerRadius = uniformCornerRadius
        binarysearchButton.setTitle("Binary Search", for: UIControlState.normal)
        binarysearchButton.setTitle("Binary Search", for: UIControlState.highlighted)

        
        // Add the new subviews to the main view
        view.addSubview(titleLabel)
        view.addSubview(quicksortButton)
        view.addSubview(binarysearchButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
