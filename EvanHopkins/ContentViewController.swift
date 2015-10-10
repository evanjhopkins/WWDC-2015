//
//  ContentViewController.swift
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/18/15.
//  Copyright (c) 2015 Evan Hopkins. All rights reserved.
//

//
//  ViewController.swift
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/18/15.
//  Copyright (c) 2015 Evan Hopkins. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    
    var pageData: PageData?
    var pageColor: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBar.hidden = false
        
        table.dataSource = self
        table.delegate = self
        var nib = UINib(nibName: "storyCell", bundle: nil)
        table.registerNib(nib, forCellReuseIdentifier: "cell2")
        table.contentInset = UIEdgeInsetsMake(-65, 0, 0, 0)
        table.allowsSelection = false
        
        pageColor = UIColor(
            red: pageData!.rgb.0,
            green: pageData!.rgb.1,
            blue: pageData!.rgb.2,
            alpha:1.0
        )
        navigationController?.navigationBar.barTintColor = pageColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        navigationController?.navigationBar.tintColor = UIColor.whiteColor()

    }
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.title = pageData?.title

    }
    
    //TABLE POPULATION
    //###############################
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var cnt = pageData?.story.count
        return cnt!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->   UITableViewCell {
        var cell:StoryCellController = self.table.dequeueReusableCellWithIdentifier("cell2") as! StoryCellController
        cell.titleLabel.text = pageData?.story[indexPath.row].title
        cell.contentLabel.text = pageData?.story[indexPath.row].contentText
        cell.coverImage.image = pageData?.story[indexPath.row].picture
        cell.titleLabel.textColor = pageColor
        cell.divider.backgroundColor = pageColor
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 400
    }
    
    //###############################

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

