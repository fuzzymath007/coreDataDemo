//
//  ViewController.swift
//  coreDataDemo
//
//  Created by Matthew Chess on 11/10/14.
//  Copyright (c) 2014 Matthew Chess. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var appDel: AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate;
        
        var context:NSManagedObjectContext = appDel.managedObjectContext!;
        
    //    var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as NSManagedObject;
        
     //   newUser.setValue("Rob", forKey: "username");
        
      //  newUser.setValue("123", forKey: "password");
        
     //   context.save(nil);
        
        var request: NSFetchRequest = NSFetchRequest(entityName: "Users");
        
        //request.returnsObjectsAsFaults = FALSE;
        
        var results = context.executeFetchRequest(request, error: nil);
        
       // println(results);
        
        if(results != nil){
            for result: AnyObject in results!{
                
                if (result.password != nil)
                {
                    var pass = result.password
                    println(pass!!)
                }
                
//                if var pass = result.password!{
//                    println(pass);
//                }
                
                
            }
        }else{
        println("nothing")
        }
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

