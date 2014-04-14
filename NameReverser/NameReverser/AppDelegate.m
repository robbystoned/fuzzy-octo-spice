//
//  AppDelegate.m
//  NameReverser
//
//  Created by Robert vd Steen on 14-04-14.
//  Copyright (c) 2014 Robert vd Steen. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)loadFile:(id)sender {
    
    // create an open documet panel
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    
    // display the panel
    [panel beginWithCompletionHandler:^(NSInteger result) {
        if (result == NSFileHandlingPanelOKButton) {
            
            // grab a reference to what has been selected
            NSURL *theDocument = [[panel URLs]objectAtIndex:0];
            
            // write our file name to a label
            _sFileName = [NSString stringWithFormat:@"%@", theDocument];
            NSLog(@"%@", _sFileName);
            _fileNameTextField.stringValue = _sFileName;
            
        }
    }];
    
}

- (IBAction)reverseFileName:(id)sender {
    NSLog(@"%@/%@", @"trying to reverse file: ",_sFileName);
}

@end
