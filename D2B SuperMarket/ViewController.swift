//
//  ViewController.swift
//  D2B SuperMarket
//
//  Created by Salwa on 3/25/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var fastFoodItems = ["KFC" , "Koshary" , "Kabab"]
    var fruitItems = ["Orange" , "Mango" , "Banana" ]
    var sectionsTypes = ["Fast Food" , "Fruits"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
 func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsTypes.count
    }
    
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            
            return fastFoodItems.count
            
        }else {
            
            return fruitItems.count
        }
        
    }
    
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell" , for:indexPath)
        
        
        if indexPath.section == 0 {
            
            
            cell.textLabel?.text=fastFoodItems[indexPath.row]
            
        }else {
            
            cell.textLabel?.text=fruitItems[indexPath.row]
            
            
        }
        
        
        return cell
    }
    
    
func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return sectionsTypes[0]
            
        }else{
            
            return sectionsTypes[1]
        }
        
    }
    
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    let cell = tableView.cellForRow(at: indexPath)
    
    if indexPath.section == 0{
        
        print(fastFoodItems[indexPath.row])
    
    }else {
    
        print(fruitItems[indexPath.row])
    }
    
    }
    
    
}

