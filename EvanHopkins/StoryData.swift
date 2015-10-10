//
//  StoryData.swift
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/25/15.
//  Copyright (c) 2015 Evan Hopkins. All rights reserved.
//

import UIKit

class StoryData: NSObject{
    var title: String
    var contentText: String
    var picture: UIImage
    
    init(title:String, contentText:String, picture:UIImage){
        self.title = title
        self.contentText = contentText
        self.picture = picture
    }
}