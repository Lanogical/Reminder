//
//  MasterViewController.swift
//  Reminder
//
//  Created by Ben Koska on 1/22/17.
//  Copyright © 2017 Ben Koska. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    @IBOutlet var TopMenu: UINavigationItem!
    
    var detailViewController: DetailViewController? = nil
    
    var objects = [Any]()

    func insert() {
        
        //1. Create the alert controller.
        let alert = UIAlertController(title: publicvars.popUpTitle, message: publicvars.popUpDesc, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.text = ""
            textField.placeholder = publicvars.popUpPlace
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            
            
            //answer = (textField?.text)!
            
            if textField?.text != nil {
                
                let txte = textField?.text
                
                if txte != "" {
                
                    self.insertNewObject("self", item: "\(txte!)")
                    if publicvars.current == .App { publicvars.addApp("\(txte!)")}
                    if publicvars.current == .Resturant { publicvars.addResturant("\(txte!)")}
                    if publicvars.current == .Shop { publicvars.addShop("\(txte!)")}
                    if publicvars.current == .Book { publicvars.addBook("\(txte!)")}

                    
                }else{
                    
                }
                
            }
            
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        
    }
    
    //TopMenu.title = publicvars.screenTitle
    
    func swipeHandler(){
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "init")
        self.present(controller,animated: true,completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = publicvars.screenTitle;
        
        let gestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeHandler))
        gestureRecognizer.direction = (.right)
        self.view.addGestureRecognizer(gestureRecognizer)
        
        if publicvars.current == .App{
            for x in publicvars.apps {
                self.insertNewObject("self", item: x)
            }
        }
        
        if publicvars.current == .Resturant{
            for x in publicvars.resturants {
                self.insertNewObject("self", item: x)
            }
        }
        
        if publicvars.current == .Book{
            for x in publicvars.books {
                self.insertNewObject("self", item: x)
            }
        }
        
        if publicvars.current == .Shop{
            for x in publicvars.shops {
                self.insertNewObject("self", item: x)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem

        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(MasterViewController.insert))
        self.navigationItem.rightBarButtonItem = addButton
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
//        self.clearsSelectionOnViewWillAppear = self.splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(_ sender: Any,item: String) {
        objects.insert(item, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! String
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = objects[indexPath.row] as! String
        cell.textLabel!.text = object.description
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            
            if publicvars.current == .App {
                publicvars.apps.remove(at: indexPath.row)
            }
            
            
            if publicvars.current == .Book {
                publicvars.books.remove(at: indexPath.row)
            }
            
            if publicvars.current == .Resturant {
                publicvars.resturants.remove(at: indexPath.row)
            }
            
            if publicvars.current == .Shop {
                publicvars.shops.remove(at: indexPath.row)
            }
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

