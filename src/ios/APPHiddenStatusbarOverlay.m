/*
 Copyright 2013-2014 appPlant UG

 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "APPHiddenStatusbarOverlay.h"

@implementation APPHiddenStatusbarOverlay

/**
 * Hides the application status bar.
 */
- (void) hide:(CDVInvokedUrlCommand*)command
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
}

/**
 * Shows the application status bar.
 */
- (void) show:(CDVInvokedUrlCommand*)command
{
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
}

/**
 * Determines if the status bar is hidden.
 *
 * @param {Function} callback
 *      A callback function to be called with the result
 */
- (void) isHidden:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* result = NULL;
    UIApplication* app = [UIApplication sharedApplication];

    BOOL isHidden = app.statusBarHidden;

    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                       messageAsBool:isHidden];

    [self.commandDelegate sendPluginResult:result
                                callbackId:command.callbackId];
}

@end
