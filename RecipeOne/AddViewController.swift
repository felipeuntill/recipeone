//
//  AddViewController.swift
//  RecipeOne
//
//  Created by Felipe Assunção on 4/13/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var recipeTextView: UITextView!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var createButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleTextField.backgroundColor = UIColor.whiteColor()
        .colorWithAlphaComponent(0.7)
        recipeTextView.backgroundColor = UIColor.whiteColor()
            .colorWithAlphaComponent(0.7)
        
        NSNotificationCenter.defaultCenter()
        .addObserver(self, selector: #selector(AddViewController.titleTextFieldDidChange as (AddViewController) -> () -> ()), name: UITextFieldTextDidChangeNotification, object: nil)
        
        NSNotificationCenter.defaultCenter()
            .addObserver(self, selector: #selector(AddViewController.recipeTextViewDidChange), name: UITextViewTextDidChangeNotification, object: nil)

    }
    
    func titleTextFieldDidChange (){
        handleButtonStates()
    }
    
    func recipeTextViewDidChange (){
        handleButtonStates()
    }
    
    @IBAction func titleTextFieldDidChange(sender: AnyObject) {
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButton(sender: AnyObject) {
        recipeTextView.resignFirstResponder()
    }
    @IBAction func titleTextField(sender: AnyObject) {
        titleTextField.resignFirstResponder()
    }

    func handleButtonStates(){
        
        doneButton.enabled = recipeTextView.text != ""
        createButton.enabled = titleTextField.text != "" && recipeTextView.text != ""
    }
    
    @IBAction func createButton(sender: AnyObject) {
        RecipeManager.AddRecipe(Recipe(title: titleTextField.text!, recipe: recipeTextView.text!))
        titleTextField.text = ""
        recipeTextView.text = ""
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
