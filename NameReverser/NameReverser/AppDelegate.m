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
    NSOpenPanel* openDlg = [NSOpenPanel openPanel];
    // Enable the selection of files in the dialog.
    [openDlg setCanChooseFiles:YES];
    
    // Multiple files not allowed
    [openDlg setAllowsMultipleSelection:NO];
    
    // Can't select a directory
    [openDlg setCanChooseDirectories:NO];

    // display the panel
    [openDlg beginWithCompletionHandler:^(NSInteger result) {
        if (result == NSFileHandlingPanelOKButton) {
            
            // grab a reference to what has been selected
            NSURL *theDocument = [openDlg URL];
                        // write our file name to a label
            _fullPath = theDocument.path;
            
            [NSString stringWithFormat:@"%@", theDocument];
            NSLog(@"%@", _fullPath);
            _fileNameTextField.stringValue = _fullPath;
            
        }
    }];
}

- (IBAction)reverseFileName:(id)sender {
    
    NSRange match;
    
    match = [_fullPath rangeOfString: @"/" options:NSBackwardsSearch];
    NSLog(@"index of / %lu", match.location);
    NSUInteger indexOf = match.location;
    NSUInteger lenght = [_fullPath length] - indexOf;
    NSLog(@"index %lu lenght %lu", indexOf,lenght);
    
    _sFileName = [_fullPath substringWithRange: NSMakeRange (indexOf +1 , lenght -1)];

    NSLog (@"FileName %@",_sFileName);
    
    
    NSLog(@"trying to reverse file: %@",_sFileName);
}

@end
