//
//  NewsTableViewController.swift
//  SidebarMenu
//
//  Created by Andy Miller on 5/23/16.
//  Copyright © 2016 Tote. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
  @IBOutlet var menuButton:UIBarButtonItem!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // SWReveal powers swipe gestures.
    if revealViewController() != nil {
      // Add Menu Button and link to SWReveal Library.
      let button: UIButton = UIButton(type: UIButtonType.Custom)
      button.setImage(UIImage(named: "menu.png"), forState: UIControlState.Normal)
      button.addTarget(revealViewController(), action: "revealToggle:", forControlEvents: UIControlEvents.TouchUpInside)
      button.frame = CGRectMake(0, 0, 22.6, 17.3)
      let barButton = UIBarButtonItem(customView: button)
      self.navigationItem.leftBarButtonItem = barButton
    }
    
  }
  
  // MARK: - Table view data source
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    // Return the number of sections.
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // Return the number of rows in the section.
    return 3
  }
  
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NewsTableViewCell
    
    // Configure the cell...
    if indexPath.row == 0 {
      cell.postImageView.image = UIImage(named: "watchkit-intro")
      cell.postTitleLabel.text = "WatchKit Introduction: Building a Simple Guess Game"
      cell.authorLabel.text = "Simon Ng"
      cell.authorImageView.image = UIImage(named: "author")
      
    } else if indexPath.row == 1 {
      cell.postImageView.image = UIImage(named: "custom-segue-featured-1024")
      cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
      cell.authorLabel.text = "Gabriel Theodoropoulos"
      cell.authorImageView.image = UIImage(named: "appcoda-300")
      
    } else {
      cell.postImageView.image = UIImage(named: "webkit-featured")
      cell.postTitleLabel.text = "A Beginner’s Guide to Animated Custom Segues in iOS 8"
      cell.authorLabel.text = "Gabriel Theodoropoulos"
      cell.authorImageView.image = UIImage(named: "appcoda-300")
      
    }
    
    return cell
  }
  
}
