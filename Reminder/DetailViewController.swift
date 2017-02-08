//
//  DetailViewController.swift
//  Reminder
//
//  Created by Ben Koska on 1/22/17.
//  Copyright © 2017 Ben Koska. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBAction func BackClick(_ sender: Any) {
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "AppMaster")
        self.present(controller,animated: true,completion: nil)
    }
    func configureView() {
         // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description

            }
        }
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        var gestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeHandler))
        gestureRecognizer.direction = (.right)
        self.view.addGestureRecognizer(gestureRecognizer)
        
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func swipeHandler(){
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "AppMaster")
        self.present(controller,animated: true,completion: nil)
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    //imageItem:detailItem

}

