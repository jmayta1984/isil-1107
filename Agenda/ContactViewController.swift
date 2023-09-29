//
//  ContactViewController.swift
//  Agenda
//
//  Created by user213116 on 9/28/23.
//

import UIKit

protocol ContactDelegate {
    func close()
    func save(name: String)
}


class ContactViewController: UIViewController {
    
    var delegate: ContactDelegate?
    var name: String?

    @IBOutlet weak var nameText: UITextField!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        guard let delegate = delegate else {
            return
        }
        delegate.close()
    }
    
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        guard let delegate = delegate else {
            return
        }
        guard let name = nameText.text else {
            return
        }
    
        delegate.save(name: name)
        delegate.close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let name = name else {
            return
        }
        
        nameText.text = name

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
