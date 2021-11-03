//
//  ViewController.swift
//  StoryPromp
//
//  Created by Varis Darasirikul on 29/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var adjectiveTextfield: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var numberSlider: UISlider!
    
    @IBAction func changeNumber(_ sender: UISlider) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storyPrompt = StoryPromptEntry()
        storyPrompt.noun = "toaster"
        storyPrompt.adjective = "smelly"
        storyPrompt.verb = "burps"
        storyPrompt.number = 77
        
        print(storyPrompt)
    }


}

