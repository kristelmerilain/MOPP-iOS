//
//  MoppLibCardActions.m
//  MoppLib
//
/*
 * Copyright 2017 Riigi Infosüsteemide Amet
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

#import "MoppLibCardActions.h"
#import "CardActionsManager.h"

@implementation MoppLibCardActions

+ (void)cardPersonalDataWithViewController:(UIViewController *)controller success:(PersonalDataBlock)success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] cardPersonalDataWithViewController:controller success:success failure:failure];
}

+ (void)minimalCardPersonalDataWithViewController:(UIViewController *)controller success:(PersonalDataBlock)success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] minimalCardPersonalDataWithViewController:controller success:success failure:failure];
}

+ (void)isCardInserted:(void (^)(BOOL))completion {
  [[CardActionsManager sharedInstance] isCardInserted:completion];
}

+ (BOOL)isReaderConnected {
  return [[CardActionsManager sharedInstance] isReaderConnected];
}

+ (void)signingCertWithViewController:(UIViewController *)controller success:(CertDataBlock)success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] signingCertWithViewController:controller pin2:@"" success:success failure:failure];
}

+ (void)authenticationCertWithViewController:(UIViewController *)controller success:(CertDataBlock)success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] authenticationCertWithViewController:controller success:success failure:failure];
}

+ (void)pin1RetryCountWithViewController:(UIViewController *)controller success:(void (^)(NSNumber *))success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] code:CodeTypePin1 retryCountWithViewController:controller success:success failure:failure];
}

+ (void)pin2RetryCountWithViewController:(UIViewController *)controller success:(void (^)(NSNumber *))success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] code:CodeTypePin2 retryCountWithViewController:controller success:success failure:failure];
}

+ (void)pukRetryCountWithViewController:(UIViewController *)controller success:(void (^)(NSNumber *))success failure:(FailureBlock)failure {
  [[CardActionsManager sharedInstance] code:CodeTypePuk retryCountWithViewController:controller success:success failure:failure];
}

@end
