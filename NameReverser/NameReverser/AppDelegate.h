//
//  AppDelegate.h
//  NameReverser
//
//  Created by Robert vd Steen on 14-04-14.
//  Copyright (c) 2014 Robert vd Steen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButtonCell *selectFileBtn;
@property (weak) IBOutlet NSTextField *fileNameTextField;
@property NSString *fullPath;
@property NSString *sFileName;

- (IBAction)loadFile:(id)sender;
- (IBAction)reverseFileName:(id)sender;
@end
