//
// Autogenerated by Laurine - by Jiri Trecak ( http://jiritrecak.com, @jiritrecak )
// Do not change this file manually!
//


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Imports

#import "Localizations.h"


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Header

@implementation _Localizations

- (NSString *)TabSimSettings {
    return NSLocalizedStringFromTable(@"tab-sim-settings", nil, nil);
}

- (NSString *)MyEidUseCount {
    return NSLocalizedStringFromTable(@"my-eid-use-count", nil, nil);
}

- (NSString *)MyEidSignatureCertificate {
    return NSLocalizedStringFromTable(@"my-eid-signature-certificate", nil, nil);
}

- (NSString *)PinActionsUnblockPin2 {
    return NSLocalizedStringFromTable(@"pin-actions-unblock-pin-2", nil, nil);
}

- (NSString *)TabSigned {
    return NSLocalizedStringFromTable(@"tab-signed", nil, nil);
}

- (NSString *)PinActionsChangePin1 {
    return NSLocalizedStringFromTable(@"pin-actions-change-pin-1", nil, nil);
}

- (NSString *)MyEidMyEid {
    return NSLocalizedStringFromTable(@"my-eid-my-eid", nil, nil);
}

- (NSString *)MyEidNotValid {
    return NSLocalizedStringFromTable(@"my-eid-not-valid", nil, nil);
}

- (NSString *)SignedContainerDetailsDatafileSectionHeader {
    return NSLocalizedStringFromTable(@"signed-container-details-datafile-section-header", nil, nil);
}

- (NSString *)MyEidCitizenship {
    return NSLocalizedStringFromTable(@"my-eid-citizenship", nil, nil);
}

- (NSString *)MyEidIdCardInfoLink {
    return NSLocalizedStringFromTable(@"my-eid-id-card-info-link", nil, nil);
}

- (NSString *)SignedContainerDetailsSignatureSectionHeader {
    return NSLocalizedStringFromTable(@"signed-container-details-signature-section-header", nil, nil);
}

- (NSString *)MyEidValid {
    return NSLocalizedStringFromTable(@"my-eid-valid", nil, nil);
}

- (NSString *)SignedContainerDetailsTitle {
    return NSLocalizedStringFromTable(@"signed-container-details-title", nil, nil);
}

- (NSString *)MyEidPersonalData {
    return NSLocalizedStringFromTable(@"my-eid-personal-data", nil, nil);
}

- (NSString *)MyEidBirth {
    return NSLocalizedStringFromTable(@"my-eid-birth", nil, nil);
}

- (NSString *)MyEidEid {
    return NSLocalizedStringFromTable(@"my-eid-eid", nil, nil);
}

- (NSString *)MyEidCardInReader {
    return NSLocalizedStringFromTable(@"my-eid-card-in-reader", nil, nil);
}

- (NSString *)MyEidEmail {
    return NSLocalizedStringFromTable(@"my-eid-email", nil, nil);
}

- (NSString *)PinActionsUnblockPin1 {
    return NSLocalizedStringFromTable(@"pin-actions-unblock-pin-1", nil, nil);
}

- (NSString *(^)(long))SignedContainerDetailsDatafileDetails {
    return ^(long value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"signed-container-details-datafile-details", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))SignedContainerDetailsSignaturePrefix {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"signed-container-details-signature-prefix", nil, nil), value1];
    };
}

- (NSString *)SignedContainerDetailsSignatureInvalid {
    return NSLocalizedStringFromTable(@"signed-container-details-signature-invalid", nil, nil);
}

- (NSString *)SignedContainerDetailsSignatureValid {
    return NSLocalizedStringFromTable(@"signed-container-details-signature-valid", nil, nil);
}

- (NSString *)MyEidUsedOnce {
    return NSLocalizedStringFromTable(@"my-eid-used-once", nil, nil);
}

- (NSString *)MyEidWarningCardNotFound {
    return NSLocalizedStringFromTable(@"my-eid-warning-card-not-found", nil, nil);
}

- (NSString *)MyEidValidUntil {
    return NSLocalizedStringFromTable(@"my-eid-valid-until", nil, nil);
}

- (NSString *)MyEidValidity {
    return NSLocalizedStringFromTable(@"my-eid-validity", nil, nil);
}

- (NSString *(^)(int))MyEidTimesUsed {
    return ^(int value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-times-used", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))MyEidWarningReaderNotFound {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-warning-reader-not-found", nil, nil), value1];
    };
}

- (NSString *)MyEidGivenNames {
    return NSLocalizedStringFromTable(@"my-eid-given-names", nil, nil);
}

- (NSString *)MyEidTapHere {
    return NSLocalizedStringFromTable(@"my-eid-tap-here", nil, nil);
}

- (NSString *)TabMyEid {
    return NSLocalizedStringFromTable(@"tab-my-eid", nil, nil);
}

- (NSString *)MyEidPersonalCode {
    return NSLocalizedStringFromTable(@"my-eid-personal-code", nil, nil);
}

- (NSString *(^)(NSString *, long))SignedContainerDetailsHeaderDetails {
    return ^(NSString * value1 , long value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"signed-container-details-header-details", nil, nil), value1, value2];
    };
}

- (NSString *)MyEidFindMoreInfo {
    return NSLocalizedStringFromTable(@"my-eid-find-more-info", nil, nil);
}

- (NSString *)SignedContainerListSearchPlaceholder {
    return NSLocalizedStringFromTable(@"signed-container-list-search-placeholder", nil, nil);
}

- (NSString *)TabSigning {
    return NSLocalizedStringFromTable(@"tab-signing", nil, nil);
}

- (NSString *)MyEidSurname {
    return NSLocalizedStringFromTable(@"my-eid-surname", nil, nil);
}

- (NSString *(^)(NSString *))MyEidIdCardInfo {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-id-card-info", nil, nil), value1];
    };
}

- (NSString *)PinActionsChangePin2 {
    return NSLocalizedStringFromTable(@"pin-actions-change-pin-2", nil, nil);
}

+ (_Localizations *)sharedInstance {

    static dispatch_once_t once;
    static _Localizations *instance;
    dispatch_once(&once, ^{
        instance = [[_Localizations alloc] init];
    });
    return instance;
}
@end

