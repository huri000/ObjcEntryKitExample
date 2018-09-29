//
//  ViewController.m
//  ObjcEntryKitExample
//
//  Created by Daniel Huri on 9/29/18.
//  Copyright © 2018 huri. All rights reserved.
//

#import "ViewController.h"
#import "ObjcEntryKitExample-Swift.h"

@interface ViewController ()
@end

@implementation ViewController {
    SwiftEntryKitAdapter *adapter;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    adapter = [[SwiftEntryKitAdapter alloc] init];
}

- (IBAction)displayButtonPressed:(id)sender {
    [adapter displayCustomAttributes];
}

@end
