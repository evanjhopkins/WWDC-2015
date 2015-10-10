//
//  ViewController.swift
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/18/15.
//  Copyright (c) 2015 Evan Hopkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var heartRateLabel: UILabel!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var heart: UIImageView!
    @IBOutlet weak var sleep: UIImageView!
    
    var pages = [PageData]()
   // var selectedPage:PageData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        var sleepIconFramesFileNames = ["sleep1", "sleep2", "sleep3", "sleep4"]
        var heartIconFramesFileNames = ["heart", "heart1"]
        var sleepIconFrames = [UIImage]()
        var heartIconFrames = [UIImage]()
        for element in sleepIconFramesFileNames{
            sleepIconFrames.append(UIImage(named: element)!)
        }
        for element in heartIconFramesFileNames{
            heartIconFrames.append(UIImage(named: element)!)
        }
        
    
        var childhoodStory:[StoryData] = []
        childhoodStory.append(StoryData(
            title: "Philadelphian",
            contentText: "I was born and raised in the suburban town of Yardley, just outside of Philadelphia. My parents raised me to follow my dreams and interests, which was quickly realized to be computers. Other hobbies inclueded neighborhood watergun battles, fort builing, and exploring the local woods.",
            picture: UIImage(named: "sprinkler")!))
        childhoodStory.append(StoryData(
            title: "Family",
            contentText: "I wouldn't have been able to get where I am today without the help of my Family. My Father tought me the importance of hard work. My Mother tought me how to love and help others. My brother, Blaise, taught me how to have fun and take risks. ",
            picture: UIImage(named: "family")!))
        childhoodStory.append(StoryData(
            title: "Holy Ghost Prep",
            contentText: "In 2008, I was fortunate enough to be accepted into Holy Ghost Preparatory High School. Here I recieved a great education and developed a sense of brotherhood. Their strong computer science program allowed me to build a solid foundation for programming.",
            picture: UIImage(named: "hgp")!
        ))
        childhoodStory.append(StoryData(
            title: "Marist College",
            contentText: "In 2012 I was accepted into my first choice, Marist College. The school is widely known on the east coast for its computer science program, which is very closely integrated with IBM. Here I developed as a person as well as greatly improved my programming ability.",
            picture: UIImage(named: "marist")!
            ))
        
        
        
        var jobStory:[StoryData] = []
        jobStory.append(StoryData(
            title: "Ipreo",
            contentText: "In the summer of 2014, I spent my summer interning at Ipreo in Manhattan. They are a financial company that provides big data and analytics tailored to investors. I worked on the debtdomain team, where I developed a new file upload system.",
            picture: UIImage(named: "ipreo3")!
        ))
        jobStory.append(StoryData(
            title: "Spectrum",
            contentText: "Throughout 2014, I worked at Specrum EDU Solutions while also completing my Junior year of college. Spectrum runs a CRM app for college admission departments. I was responsible for many new feature implementations and bug fixes.",
            picture: UIImage(named: "spectrum.jpg")!
            ))
        jobStory.append(StoryData(
            title: "IBM",
            contentText: "I currently work at IBM and plan to continue working their through my senior year of college. I work on the Cloud subdivision of the zOS team. zOS is a mainframe operating system that is used by over 90% of fortune 500 companies.",
            picture: UIImage(named: "ibm")!
            ))
        
        
        var hobbyStory: [StoryData] = []
        hobbyStory.append(StoryData(
            title: "Mechanics",
            contentText: "When I'm not working on my computer, I am usually working on cars. Pictured above is my beloved 1992 Mazda Miata. I find just as much joy in working on the car as I do in driving it. I looking forward to the future of electric and self driving cars. ",
            picture: UIImage(named: "miata")!
        ))
        hobbyStory.append(StoryData(
            title: "Hiking",
            contentText: "When I need a break from the digital world, I prefer to go hiking. I find nature extremely relaxing as well as inspiring when I am working on new projects. Pictured above is a recent trip to Minnewaska State Park (NY) I made with some friends. ",
            picture: UIImage(named: "hiking")!
            ))
        hobbyStory.append(StoryData(
            title: "Volunteer Firefighter",
            contentText: "In 2010, I completed my Firefighter One certification and joined New Hope Eagle Firecompany. I enjoy being able to serve my community when they are in need. Firefighting tought me a lot about overcoming fears and putting others before myself.",
            picture: UIImage(named: "fire.jpg")!
            ))
        hobbyStory.append(StoryData(
            title: "Community Service",
            contentText: "When I am up at school, I serve my community by voluteering where needed. Through Marist Campus Minitstry, I volunteer at soup kitchens and daycares. Through my fraternity, I volunteer at the SPCA and local Veterans Association. ",
            picture: UIImage(named: "hunger")!
            ))
        
        var experianceStory: [StoryData] = []
        experianceStory.append(StoryData(
            title: "Manhattan",
            contentText: "In 2014, I spent my summer living in Manhattan. I made friends from all over the world, including Austrailia, Ireland, and Brazil. I absolutely loved the fast paced enviroment NYC is known for. I hope to someday move back and continue exploring city.",
            picture: UIImage(named: "nyc")!
            ))
        experianceStory.append(StoryData(
            title: "Y-Combinator",
            contentText: "I was lucky enough to recieve a ticket to Y-Combinator's Startup School in 2014. I was able to meet founders and developers working on amazing projects, such as SocialBlood. I also got the chance to meet the founder of Reddit, Alexis Ohanian. ",
            picture: UIImage(named: "yc")!
            ))
        experianceStory.append(StoryData(
            title: "TWiT",
            contentText: "Last summer, I got to sit and watch a live episode of the This Week In Tech podcast. The host, Leo Laporte, has been one of my biggest inspirations since I was first getting into computers. Meeting him is an experience I will never forget. ",
            picture: UIImage(named: "twit")!
            ))
        experianceStory.append(StoryData(
            title: "Apple Campus",
            contentText: "While visiting San Francisco, I look a day trip to Apple's headquarters in Coupertino. It was an amazing feeling to stand where Steve Jobs once stood. Hopefully the next time I am there it will be as an employee. ",
            picture: UIImage(named: "apple2")!
            ))
        
        var developmentStory: [StoryData] = []
        developmentStory.append(StoryData(
            title: "Registration Sniper",
            contentText: "In my freshman year of college, I developed a program to automate the process of course registration. It allows students to register instantly, assuring they will get in before the class fills up. It is actively used by hundreds of students each registration period.",
            picture: UIImage(named: "hackmarist")!
            ))
        developmentStory.append(StoryData(
            title: "Assignment Summarizer",
            contentText: "Out of frustration with my college's current online assignment system, I developed a web app to neatly summarize student's assignments. If an assignment is due soon, it will be highlighted in red to ensure you dont forget.",
            picture: UIImage(named: "ilearn")!
            ))
        developmentStory.append(StoryData(
            title: "Morgan Stanly Hackathon",
            contentText: "In 2013, my team and I competed in a Morgan Stanley programming competition. We created an algorithm to predictively balance the load of financial trading servers across North America, Asia, and Europe. We placed 2nd overall.",
            picture: UIImage(named: "ms")!
            ))
        developmentStory.append(StoryData(
            title: "Phyth API Framework",
            contentText: "When I couldn't find a Python API framework that could be deployed in minutes, I decided to create my own. I needed something that required no setup for projects where minutes matter, such as hackathons. ",
            picture: UIImage(named: "phyth")!
            ))
        
        pages.append(PageData(
            title: "Evan Hopkins",
            story: childhoodStory,
            rgb: (0.4, 0.18, 0.57)
        ))
        pages.append(PageData(
            title: "Jobs",
            story: jobStory,
            rgb: (0.93, 0.11, 0.14)
        ))
        pages.append(PageData(
            title: "Projects",
            story: developmentStory,
            rgb: (0.13, 0.70, 0.29)
        ))
        pages.append(PageData(
            title: "Hobbies",
            story: hobbyStory,
            rgb: (0.18, 0.19, 0.58)
        ))
        pages.append(PageData(
            title: "Experiences",
            story: experianceStory,
            rgb: (0.96, 0.40, 0.14)
        ))
        table.dataSource = self
        table.delegate = self
        var nib = UINib(nibName: "categoryCell", bundle: nil)
        table.registerNib(nib, forCellReuseIdentifier: "cell")
        table.contentInset = UIEdgeInsetsMake(75, 0, 0, 0)
        

    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = true
    }
    //TABLE POPULATION
    //###############################    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pages.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->   UITableViewCell {
        var cell:categoryCellController = self.table.dequeueReusableCellWithIdentifier("cell") as! categoryCellController
        cell.titleLabel.text = pages[indexPath.row].title
        cell.titleLabel.textColor = UIColor(
            red: pages[indexPath.row].rgb.0,
            green: pages[indexPath.row].rgb.1,
            blue: pages[indexPath.row].rgb.2,
            alpha: 1.0
        )
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        self.performSegueWithIdentifier("showContent", sender: self)
    }
    
    func tapGesture(gesture: UIGestureRecognizer) {
        if let heart = gesture.view as?  UIImageView{
        }
    }
    
    func tapGestureSleep(gesture: UIGestureRecognizer){
        if let sleep = gesture.view as? UIImageView{

        }
    }
    
    override func viewDidLayoutSubviews() {
        profilePicture.layer.borderWidth = 1
        profilePicture.layer.borderColor = UIColor.whiteColor().CGColor
        profilePicture.layer.cornerRadius = profilePicture.frame.height/2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showContent"){
            let dest: ContentViewController = segue.destinationViewController as! ContentViewController
            dest.pageData = pages[table.indexPathForSelectedRow()!.row]
        }
    }

}

