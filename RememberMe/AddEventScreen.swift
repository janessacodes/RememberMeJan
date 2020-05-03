//
//  AddEventScreen.swift
//  RememberMe
//
//  Created by Janessa Ulug on 4/23/20.
//  Copyright © 2020 Sriya Kantipudi. All rights reserved.
//

import UIKit

class AddEventScreen: UIViewController {
   
    @IBOutlet weak var eventField: UITextField!
    
    var eventText = ""
    
    @IBOutlet weak var notesField: UITextField!
    var notesText = ""
    
    @IBOutlet weak var datePicker: UIDatePicker!
    var dateText = ""
    
//    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        eventField.delegate = self
//        notesField.delegate = self
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func addEvent(_ sender: Any) {
        eventText = eventField.text!
        notesText = notesField.text!
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        dateText = dateFormatter.string(from: datePicker.date)
        performSegue(withIdentifier: "event", sender: self)
//        textView.text = "Event name: \(eventField.text!)\nNotes: \(notesField.text!)"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! TimelineScreen
        vc.finalEvent = self.eventText
        vc.finalNotes = self.notesText
        vc.finalDate = self.dateText
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//}
//extension AddEventScreen : UITextFieldDelegate {
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
    
}
