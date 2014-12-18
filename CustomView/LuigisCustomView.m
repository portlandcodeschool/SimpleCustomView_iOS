//
//  LuigisCustomView.m
//  CustomView
//
//  Created by Erick Bennett on 12/15/14.
//  Copyright (c) 2014 Erick Bennett. All rights reserved.
//

#import "LuigisCustomView.h"

@implementation LuigisCustomView

//We are using init, and staticly setting our views frame size
-(id)init {
    
    self = [super init];
    
    if (self) {
        
        //Properties for UILabel and UIImageview declared in our .h file.
        
        //Statically set this new views frame size
        self.frame = CGRectMake(0, 0, 160, 160);
        
        //Set our background color to red
        self.backgroundColor = [UIColor redColor];
        
        //Alloc and init our UIImageview and give it a frame size
        self.centerImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        
        //Set the background color of out UIIMageview to white
        self.centerImage.backgroundColor = [UIColor whiteColor];
        
        //Center our UIImageview to the views cetner
        self.centerImage.center = self.center;
        
        //Alloc and init our UILabel and give it a frame size
        self.bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, self.frame.size.width, 30)];
        
        //Set the UILabel background color to clear
        self.bottomLabel.backgroundColor = [UIColor clearColor];
        
        //Tell our UILable to center justify the text
        self.bottomLabel.textAlignment = NSTextAlignmentCenter;

        //Add our UIImageview as a subview
        [self addSubview:self.centerImage];
        
        //Add our UILabel as a subview
        [self addSubview:self.bottomLabel];
        
    }
    
    return self;
}

//Use init with frame to pass in the frame size at initialization.
-(id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        //Properties for UILabel and UIImageview declared in our .h file.

        //Set our frame size to that which was passed to us.
        self.frame = frame;
        
        //Setting background of our view to blue.
        self.backgroundColor = [UIColor blueColor];
        
        //Create our UIImageviews (Alloc and Init) frame by taking our views frame, width and height and dividing by 2.
        self.centerImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.height/2, frame.size.width/2)];
        //Set the background color of our UIImagview
        self.centerImage.backgroundColor = [UIColor whiteColor];
       
        //Center our UIImageview on our views center
        self.centerImage.center = self.center;
        
        //Alloc and init our UILabel and set its frame size based on our views frame size.
        self.bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height - 20, self.frame.size.width, 20)];
        
        //Set the background color of our UIlabel to clear
        self.bottomLabel.backgroundColor = [UIColor clearColor];
        
        //Tell our UILable to center justify the text
        self.bottomLabel.textAlignment = NSTextAlignmentCenter;
        
        //Add the center image to our view
        [self addSubview:self.centerImage];
        
        //Add the label to our view
        [self addSubview:self.bottomLabel];
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
