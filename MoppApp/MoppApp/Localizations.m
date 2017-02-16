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

- (NSString *)SettingsMobileIdHeader {
    return NSLocalizedStringFromTable(@"settings-mobile-id-header", nil, nil);
}

- (NSString *)MyEidEmail {
    return NSLocalizedStringFromTable(@"my-eid-email", nil, nil);
}

- (NSString *(^)(NSString *))MyEidWarningReaderNotFound {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-warning-reader-not-found", nil, nil), value1];
    };
}

- (NSString *)MyEidUseCount {
    return NSLocalizedStringFromTable(@"my-eid-use-count", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsRepeatPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-repeat-pin", nil, nil), value1];
    };
}

- (NSString *)ContainerDetailsSigningMethodIdCard {
    return NSLocalizedStringFromTable(@"container-details-signing-method-id-card", nil, nil);
}

- (NSString *)ContainerDetailsReaderNotFound {
    return NSLocalizedStringFromTable(@"container-details-reader-not-found", nil, nil);
}

- (NSString *)MyEidGivenNames {
    return NSLocalizedStringFromTable(@"my-eid-given-names", nil, nil);
}

- (NSString *)MyEidCitizenship {
    return NSLocalizedStringFromTable(@"my-eid-citizenship", nil, nil);
}

- (NSString *(^)(NSString *))FileImportInfo {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"file-import-info", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *, int))PinActionsWrongPinRetry {
    return ^(NSString * value1 , int value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-wrong-pin-retry", nil, nil), value1, value2];
    };
}

- (NSString *)ContainerDetailsPhoneNumberErrorAlertTitle {
    return NSLocalizedStringFromTable(@"container-details-phone-number-error-alert-title", nil, nil);
}

- (NSString *)MyEidIdCardInfoLink {
    return NSLocalizedStringFromTable(@"my-eid-id-card-info-link", nil, nil);
}

- (NSString *)PinActionsPin1 {
    return NSLocalizedStringFromTable(@"pin-actions-pin1", nil, nil);
}

- (NSString *)ContainerDetailsSignatureInvalid {
    return NSLocalizedStringFromTable(@"container-details-signature-invalid", nil, nil);
}

- (NSString *)MyEidPinActionsView {
    return NSLocalizedStringFromTable(@"my-eid-pin-actions-view", nil, nil);
}

- (NSString *)MyEidFindMoreInfo {
    return NSLocalizedStringFromTable(@"my-eid-find-more-info", nil, nil);
}

- (NSString *)ActionOk {
    return NSLocalizedStringFromTable(@"action-ok", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsTitleUnblockingPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-title-unblocking-pin", nil, nil), value1];
    };
}

- (NSString *)ContainerDetailsIdcodePhoneAlertIdcodePlacholder {
    return NSLocalizedStringFromTable(@"container-details-idcode-phone-alert-idcode-placholder", nil, nil);
}

- (NSString *)ContainerDetailsEnterNewName {
    return NSLocalizedStringFromTable(@"container-details-enter-new-name", nil, nil);
}

- (NSString *)ActionCancel {
    return NSLocalizedStringFromTable(@"action-cancel", nil, nil);
}

- (NSString *)ContainerDetailsSigningMethodAlertTitle {
    return NSLocalizedStringFromTable(@"container-details-signing-method-alert-title", nil, nil);
}

- (NSString *)ContainerDetailsIdcodePhoneAlertPhonenumberPlacholder {
    return NSLocalizedStringFromTable(@"container-details-idcode-phone-alert-phonenumber-placholder", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsGeneralError {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-general-error", nil, nil), value1];
    };
}

- (NSString *)PinActionsSuccessTitle {
    return NSLocalizedStringFromTable(@"pin-actions-success-title", nil, nil);
}

- (NSString *)PinActionsPin2 {
    return NSLocalizedStringFromTable(@"pin-actions-pin2", nil, nil);
}

- (NSString *)PinActionsInfo {
    return NSLocalizedStringFromTable(@"pin-actions-info", nil, nil);
}

- (NSString *)ContainerDetailsPinNotProvided {
    return NSLocalizedStringFromTable(@"container-details-pin-not-provided", nil, nil);
}

- (NSString *)ContainerDetailsDatafileSectionHeader {
    return NSLocalizedStringFromTable(@"container-details-datafile-section-header", nil, nil);
}

- (NSString *(^)(long))ContainerDetailsDatafileDetails {
    return ^(long value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"container-details-datafile-details", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))PinActionsSuccessPinChanged {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-success-pin-changed", nil, nil), value1];
    };
}

- (NSString *)NoContainersCellTitle {
    return NSLocalizedStringFromTable(@"no-containers-cell-title", nil, nil);
}

- (NSString *(^)(NSString *))MyEidIdCardInfo {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-id-card-info", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *, NSString *))PinActionsRepeatedPinDoesntMatch {
    return ^(NSString * value1 , NSString * value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-repeated-pin-doesnt-match", nil, nil), value1, value2];
    };
}

- (NSString *)ContainerDetailsGeneralError {
    return NSLocalizedStringFromTable(@"container-details-general-error", nil, nil);
}

- (NSString *)MyEidUsedOnce {
    return NSLocalizedStringFromTable(@"my-eid-used-once", nil, nil);
}

- (NSString *)MyEidValid {
    return NSLocalizedStringFromTable(@"my-eid-valid", nil, nil);
}

- (NSString *)MyEidBirth {
    return NSLocalizedStringFromTable(@"my-eid-birth", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsChangingPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-changing-pin", nil, nil), value1];
    };
}

- (NSString *)ContainerDetailsSigningSuccess {
    return NSLocalizedStringFromTable(@"container-details-signing-success", nil, nil);
}

- (NSString *)SettingsNewContainerFormat {
    return NSLocalizedStringFromTable(@"settings-new-container-format", nil, nil);
}

- (NSString *)ActionEdit {
    return NSLocalizedStringFromTable(@"action-edit", nil, nil);
}

- (NSString *(^)(NSString *))FileImportImportFailedAlertMessage {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"file-import-import-failed-alert-message", nil, nil), value1];
    };
}

- (NSString *)SettingsIdCodeAlertMessage {
    return NSLocalizedStringFromTable(@"settings-id-code-alert-message", nil, nil);
}

- (NSString *)AboutDependencies {
    return NSLocalizedStringFromTable(@"about-dependencies", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsRuleDifferentFromPrevious {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-rule-different-from-previous", nil, nil), value1];
    };
}

- (NSString *)MyEidValidity {
    return NSLocalizedStringFromTable(@"my-eid-validity", nil, nil);
}

- (NSString *)ContainerDetailsPhoneNumberErrorAlertMessage {
    return NSLocalizedStringFromTable(@"container-details-phone-number-error-alert-message", nil, nil);
}

- (NSString *)TabSimSettings {
    return NSLocalizedStringFromTable(@"tab-sim-settings", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsPinBlocked {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-pin-blocked", nil, nil), value1];
    };
}

- (NSString *)ContainerDetailsSigningMethodMobileId {
    return NSLocalizedStringFromTable(@"container-details-signing-method-mobile-id", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsVerificationOption {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-verification-option", nil, nil), value1];
    };
}

- (NSString *)ContainerDetailsTitle {
    return NSLocalizedStringFromTable(@"container-details-title", nil, nil);
}

- (NSString *)MyEidEid {
    return NSLocalizedStringFromTable(@"my-eid-eid", nil, nil);
}

- (NSString *(^)(NSString *))ChallengeCodeLabel {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"challenge-code-label", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))PinActionsChangePin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-change-pin", nil, nil), value1];
    };
}

- (NSString *)ContainerDetailsSignatureAdded {
    return NSLocalizedStringFromTable(@"container-details-signature-added", nil, nil);
}

- (NSString *)FileImportCreateContainerButton {
    return NSLocalizedStringFromTable(@"file-import-create-container-button", nil, nil);
}

- (NSString *)PinActionsRulesTitle {
    return NSLocalizedStringFromTable(@"pin-actions-rules-title", nil, nil);
}

- (NSString *)ContainerDetailsEnterPin {
    return NSLocalizedStringFromTable(@"container-details-enter-pin", nil, nil);
}

- (NSString *)MyEidSurname {
    return NSLocalizedStringFromTable(@"my-eid-surname", nil, nil);
}

- (NSString *)MyEidPersonalCode {
    return NSLocalizedStringFromTable(@"my-eid-personal-code", nil, nil);
}

- (NSString *)MyEidNotValid {
    return NSLocalizedStringFromTable(@"my-eid-not-valid", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsSuccessPinUnblocked {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-success-pin-unblocked", nil, nil), value1];
    };
}

- (NSString *)PinActionsErrorTitle {
    return NSLocalizedStringFromTable(@"pin-actions-error-title", nil, nil);
}

- (NSString *)ContainerDetailsIdcodePhoneAlertTitle {
    return NSLocalizedStringFromTable(@"container-details-idcode-phone-alert-title", nil, nil);
}

- (NSString *)MyEidCardInReader {
    return NSLocalizedStringFromTable(@"my-eid-card-in-reader", nil, nil);
}

- (NSString *)ContainerDetailsRename {
    return NSLocalizedStringFromTable(@"container-details-rename", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsUnblockingPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-unblocking-pin", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *, NSString *))PinActionsSameAsCurrent {
    return ^(NSString * value1 , NSString * value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-same-as-current", nil, nil), value1, value2];
    };
}

- (NSString *)SettingsIdCodeTitle {
    return NSLocalizedStringFromTable(@"settings-id-code-title", nil, nil);
}

- (NSString *)ContainersListSearchPlaceholder {
    return NSLocalizedStringFromTable(@"containers-list-search-placeholder", nil, nil);
}

- (NSString *)ContainersListSectionHeaderSigned {
    return NSLocalizedStringFromTable(@"containers-list-section-header-signed", nil, nil);
}

- (NSString *)ContainerDetailsSignatureValid {
    return NSLocalizedStringFromTable(@"container-details-signature-valid", nil, nil);
}

- (NSString *)SettingsApplicationVersion {
    return NSLocalizedStringFromTable(@"settings-application-version", nil, nil);
}

- (NSString *(^)(NSString *, NSString *))PinActionsWrongPinBlocked {
    return ^(NSString * value1 , NSString * value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-wrong-pin-blocked", nil, nil), value1, value2];
    };
}

- (NSString *)SettingsAbout {
    return NSLocalizedStringFromTable(@"settings-about", nil, nil);
}

- (NSString *)FileImportImportFailedAlertTitle {
    return NSLocalizedStringFromTable(@"file-import-import-failed-alert-title", nil, nil);
}

- (NSString *)TabContainers {
    return NSLocalizedStringFromTable(@"tab-containers", nil, nil);
}

- (NSString *)MyEidValidUntil {
    return NSLocalizedStringFromTable(@"my-eid-valid-until", nil, nil);
}

- (NSString *(^)(NSString *, int, int))PinActionsRulePinLength {
    return ^(NSString * value1 , int value2 , int value3) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-rule-pin-length", nil, nil), value1, value2, value3];
    };
}

- (NSString *)ContainerDetailsName {
    return NSLocalizedStringFromTable(@"container-details-name", nil, nil);
}

- (NSString *)ContainerDetailsSignatureSectionHeader {
    return NSLocalizedStringFromTable(@"container-details-signature-section-header", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsCurrentPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-current-pin", nil, nil), value1];
    };
}

- (NSString *)ContainersListSectionHeaderUnsigned {
    return NSLocalizedStringFromTable(@"containers-list-section-header-unsigned", nil, nil);
}

- (NSString *)ContainerDetailsIdcodePhoneAlertMessage {
    return NSLocalizedStringFromTable(@"container-details-idcode-phone-alert-message", nil, nil);
}

- (NSString *)ContainerDetailsCardNotFound {
    return NSLocalizedStringFromTable(@"container-details-card-not-found", nil, nil);
}

- (NSString *)ContainerDetailsSignatureAlreadyExists {
    return NSLocalizedStringFromTable(@"container-details-signature-already-exists", nil, nil);
}

- (NSString *)SettingsPhoneNumberTitle {
    return NSLocalizedStringFromTable(@"settings-phone-number-title", nil, nil);
}

- (NSString *)MyEidSignatureCertificate {
    return NSLocalizedStringFromTable(@"my-eid-signature-certificate", nil, nil);
}

- (NSString *)FileImportTitle {
    return NSLocalizedStringFromTable(@"file-import-title", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsUnblockPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-unblock-pin", nil, nil), value1];
    };
}

- (NSString *)AboutDevelopment {
    return NSLocalizedStringFromTable(@"about-development", nil, nil);
}

- (NSString *(^)(NSString *, long))ContainerDetailsHeaderDetails {
    return ^(NSString * value1 , long value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"container-details-header-details", nil, nil), value1, value2];
    };
}

- (NSString *)PinActionsPuk {
    return NSLocalizedStringFromTable(@"pin-actions-puk", nil, nil);
}

- (NSString *)ContainerDetailsRenameContainer {
    return NSLocalizedStringFromTable(@"container-details-rename-container", nil, nil);
}

- (NSString *(^)(int))MyEidTimesUsed {
    return ^(int value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-times-used", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *, NSString *, NSString *))MyEidPinBlocked {
    return ^(NSString * value1 , NSString * value2 , NSString * value3) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"my-eid-pin-blocked", nil, nil), value1, value2, value3];
    };
}

- (NSString *(^)(NSString *, NSString *))PinActionsRuleForbiddenPins {
    return ^(NSString * value1 , NSString * value2) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-rule-forbidden-pins", nil, nil), value1, value2];
    };
}

- (NSString *)TabMyEid {
    return NSLocalizedStringFromTable(@"tab-my-eid", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsInvalidFormat {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-invalid-format", nil, nil), value1];
    };
}

- (NSString *)SettingsPhoneNumberAlertMessage {
    return NSLocalizedStringFromTable(@"settings-phone-number-alert-message", nil, nil);
}

- (NSString *(^)(NSString *))PinActionsNewPin {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-new-pin", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))PinActionsRuleNumbersOnly {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-rule-numbers-only", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))ContainerDetailsSignaturePrefix {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"container-details-signature-prefix", nil, nil), value1];
    };
}

- (NSString *(^)(NSString *))PinActionsVerificationTitle {
    return ^(NSString * value1) {
        return [NSString stringWithFormat: NSLocalizedStringFromTable(@"pin-actions-verification-title", nil, nil), value1];
    };
}

- (NSString *)MyEidPersonalData {
    return NSLocalizedStringFromTable(@"my-eid-personal-data", nil, nil);
}

- (NSString *)ContainerDetailsSigningMethodAlertMessage {
    return NSLocalizedStringFromTable(@"container-details-signing-method-alert-message", nil, nil);
}

- (NSString *)MyEidWarningCardNotFound {
    return NSLocalizedStringFromTable(@"my-eid-warning-card-not-found", nil, nil);
}

- (NSString *)TabSettings {
    return NSLocalizedStringFromTable(@"tab-settings", nil, nil);
}

- (NSString *)MyEidTapHere {
    return NSLocalizedStringFromTable(@"my-eid-tap-here", nil, nil);
}

- (NSString *)ActionDelete {
    return NSLocalizedStringFromTable(@"action-delete", nil, nil);
}

- (NSString *)MyEidMyEid {
    return NSLocalizedStringFromTable(@"my-eid-my-eid", nil, nil);
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

