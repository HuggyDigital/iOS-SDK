//
//  ViewController.m
//  sdk-demo
//
//  Created by Cássio Santos on 21/05/19.
//  Copyright © 2019 huggy.io. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)onSDKClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *startChat;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onSDKClick:(id)sender {
    NSURL *URL = [NSURL URLWithString:@"https://github.com/HuggyDigital/iOS-SDK/"];
    [[UIApplication sharedApplication] openURL: URL options:@{} completionHandler:nil];
}

@end
