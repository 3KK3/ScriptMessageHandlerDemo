//
//  WeakScriptMessageDelegateImpl.h
//  ScriptMessageHandlerDemo
//
//  Created by YZY on 2018/11/22.
//  Copyright © 2018 ZMJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeakScriptMessageDelegateImpl : NSObject <WKScriptMessageHandler>

@property (nonatomic, assign) id<WKScriptMessageHandler> scriptDelegate;

- (instancetype)initWithDelegate:(id<WKScriptMessageHandler>)scriptDelegate;

@end

NS_ASSUME_NONNULL_END
