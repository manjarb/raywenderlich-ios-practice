//
//  StoryPromptTableViewController.swift
//  StoryPrompt
//
//  Created by Varis Darasirikul on 4/11/21.
//

import UIKit

class StoryPromptTableViewController: UITableViewController {
    
    var storyPrompts = [StoryPromptEntry]()

    override func viewDidLoad() {
        super.viewDidLoad()

//        let storyPrompt1 = StoryPromptEntry()
//        let storyPrompt2 = StoryPromptEntry()
//        let storyPrompt3 = StoryPromptEntry()
//
//        storyPrompt1.noun = "toaster"
//        storyPrompt1.adjective = "smelly"
//        storyPrompt1.verb = "attacks"
//        storyPrompt1.number = 5
//
//        storyPrompt1.noun = "2 toaster"
//        storyPrompt1.adjective = "2 smelly"
//        storyPrompt1.verb = "2 attacks"
//        storyPrompt1.number = 5
//
//        storyPrompt1.noun = "3 toaster"
//        storyPrompt1.adjective = "3 smelly"
//        storyPrompt1.verb = "3 attacks"
//        storyPrompt1.number = 5
//
//        storyPrompts = [storyPrompt1, storyPrompt2, storyPrompt3]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storyPrompts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryPrompCell", for: indexPath)
        cell.textLabel?.text = "Propmt \(indexPath.row + 1)"
        cell.imageView?.image = storyPrompts[indexPath.row].image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyPromt = storyPrompts[indexPath.row]
        performSegue(withIdentifier: "ShowStoryPrompt", sender: storyPromt)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowStoryPrompt" {
            guard let storyPromptViewController = segue.destination as?
                    StoryPromptViewController,
                    let storyPromt = sender as? StoryPromptEntry else {
                return
            }
            
            storyPromptViewController.storyPrompt = storyPromt
        }
    }
    
    @IBAction func saveStoryPrompt(unwindSegue: UIStoryboardSegue) {
        guard let storyPromptViewController = unwindSegue.source as? StoryPromptViewController, let storyPrompt = storyPromptViewController.storyPrompt else {
            return
        
        }
        storyPrompts.append(storyPrompt)
        tableView.reloadData()
    }
    
    @IBAction func cancelStoryPrompt(unwindSegue: UIStoryboardSegue) {
        print("222")
    }
}
