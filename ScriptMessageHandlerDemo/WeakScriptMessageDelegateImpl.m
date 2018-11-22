//
//  WeakScriptMessageDelegateImpl.m
//  ScriptMessageHandlerDemo
//
//  Created by YZY on 2018/11/22.
//  Copyright © 2018 ZMJ. All rights reserved.
//

#import "WeakScriptMessageDelegateImpl.h"

@implementation WeakScriptMessageDelegateImpl

- (instancetype)initWithDelegate:(id<WKScriptMessageHandler>)scriptDelegate {
    self = [super init];
    if (self) {
        _scriptDelegate = scriptDelegate;
    }
    return self;
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    [self.scriptDelegate userContentController:userContentController didReceiveScriptMessage:message];
}

@end
