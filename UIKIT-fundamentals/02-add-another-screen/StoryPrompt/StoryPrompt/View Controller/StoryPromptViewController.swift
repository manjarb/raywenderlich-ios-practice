//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by Varis Darasirikul on 3/11/2021.
//

import UIKit

class StoryPromptViewController: UIViewController {
    @IBOutlet weak var storypromtTextView: UITextView!
    
    var storyPrompt: StoryPromptEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        storypromtTextView.text = storyPrompt?.description
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
