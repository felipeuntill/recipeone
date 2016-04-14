//
//  ViewController.swift
//  RecipeOne
//
//  Created by Felipe Assunção on 4/12/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImageView(image: UIImage(named: "Bread"))
        image.contentMode = UIViewContentMode.ScaleAspectFill;
        // Setting 70 pixels for the tableView rows height
        tableView.rowHeight = 70
        tableView.backgroundView = image
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.alpha = 0.7
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecipeManager.recipes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell")! as! CustomTableViewCell
        let recipe = RecipeManager.LoadRecipe(indexPath.item)
        
        cell.recipe = recipe
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.text = recipe.title
        
        if(indexPath.item % 2 == 0)
        {
            cell.backgroundColor = UIColor.clearColor()
        }
        else
        {
            cell.backgroundColor = UIColor.whiteColor()
            .colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor()
                .colorWithAlphaComponent(0.0)
        }
        
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "detailSegue"){
            let cell = sender as! CustomTableViewCell
            let detailview = segue.destinationViewController as! DetailViewController
            let id = RecipeManager.recipes.indexOf({ $0.title == cell.recipe?.title })
            let recipe = RecipeManager.LoadRecipe(id!)
            detailview.recipe = recipe
        }
    }
}

