//
//  ViewController.m
//  ScriptMessageHandlerDemo
//
//  Created by YZY on 2018/11/22.
//  Copyright © 2018 ZMJ. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "WeakScriptMessageDelegateImpl.h"

@interface ViewController () <WKScriptMessageHandler>
{
    WKWebView *_webView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[_webView configuration].userContentController addScriptMessageHandler:[[WeakScriptMessageDelegateImpl alloc] initWithDelegate:self] name:@"方法名"];
 
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {

    // TODO: balabala
}


- (void)dealloc {
    [[_webView configuration].userContentController removeScriptMessageHandlerForName:@"方法名"];
}

@end
