//
//  TimelineScreen.swift
//  RememberMe
//
//  Created by Janessa Ulug on 4/29/20.
//  Copyright © 2020 Sriya Kantipudi. All rights reserved.
//

import UIKit

class TimelineScreen: UIViewController {
    @IBOutlet weak var eventLabel: UILabel!
    
    var finalEvent = ""
    
    var finalNotes = ""
    
    var finalDate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventLabel.text = finalDate + "\n" + finalEvent + "\n" + finalNotes
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
