//
//  ChatController.m
//  sdk-demo
//
//  Created by Cássio Santos on 22/05/19.
//  Copyright © 2019 huggy.io. All rights reserved.
//

#import "ChatController.h"

@interface ChatController ()
{
    //***************
    HuggySdk* huggySdk;
    
}
@property (weak, nonatomic) IBOutlet UIWebView *HuggyView;

@end

@implementation ChatController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    huggySdk = [[HuggySdk alloc] initWith:@"e15e394a-3314-467e-a049-99cd76210ae3" :_HuggyView];
    huggySdk.delegate = self;
    
    [huggySdk prepare];
    [huggySdk start];
}

-(void)viewWillAppear:(BOOL)animated {
    self.navigationItem.title = @"Huggy Support";
}

-(void)viewWillDisappear:(BOOL)animated{
    [huggySdk stop];
}

-(void)dealloc{
    [huggySdk stop];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onSendMessage:(id)sender {
    NSLog(@"sendMessage");
    [huggySdk callApiMethod:@"sendMessage":@"\"Testando SDK\""];
}

- (IBAction)onSetName:(id)sender {
    NSLog(@"setName");
    [huggySdk callApiMethod:@"setName" :@"\"Huggy Client\""];
}

- (IBAction)onOpenEmail:(id)sender {
    NSLog(@"openEmail");
    [huggySdk callApiMethod:@"openEmail" :@""];
}

- (IBAction)onOpenPhone:(id)sender {
    NSLog(@"openPhone");
    [huggySdk callApiMethod:@"openPhone" :@""];
}

@end
