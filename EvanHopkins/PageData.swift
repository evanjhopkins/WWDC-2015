//
//  PageData.swift
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/18/15.
//  Copyright (c) 2015 Evan Hopkins. All rights reserved.
//

import UIKit

class PageData: NSObject{
    var title: String
    var story: [StoryData]
    var rgb: (CGFloat, CGFloat, CGFloat)
    
    init(title:String, story:[StoryData], rgb:(CGFloat,CGFloat,CGFloat)){
        self.title = title
        self.story = story
        self.rgb = rgb
    }
}