//
//  MoppLibCardActions.m
//  MoppLib
//
//  Created by Katrin Annuk on 27/12/16.
//  Copyright © 2016 Mobi Lab. All rights reserved.
//

#import "MoppLibCardActions.h"
#import "CardActionsManager.h"

@implementation MoppLibCardActions

+ (void)cardPersonalDataWithViewController:(UIViewController *)controller success:(void(^)(MoppLibPersonalData *))success failure:(void(^)(NSError *))failure {
  
  [[CardActionsManager sharedInstance] cardPersonalDataWithViewController:controller success:success failure:failure];
}

+ (void)isCardInserted:(void (^)(BOOL))completion {
  [[CardActionsManager sharedInstance] isCardInserted:completion];
}

+ (BOOL)isReaderConnected {
  return [[CardActionsManager sharedInstance] isReaderConnected];
}

+ (void)signingCertWithViewController:(UIViewController *)controller success:(void (^)(MoppLibCertData *))success failure:(void (^)(NSError *))failure {
  [[CardActionsManager sharedInstance] signingCertWithViewController:controller success:success failure:failure];
}

@end
