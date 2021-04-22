//
//  LocalizationKeys.swift
//  MoppApp
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
enum LocKey : String
{
    typealias RawValue = String

    case backButton = "back-button"
    case menuHelp = "menu-help"
    case menuRecentContainers = "menu-recent-containers"
    case menuSettings = "menu-settings"
    case menuAbout = "menu-about"
    case menuDiagnostics = "menu-diagnostics"
    case languageEstonian = "language-estonian"
    case languageEnglish = "language-english"
    case languageRussian = "language-russian"
    case languageUnknown = "language-unknown"
    case tabMyEid = "tab-my-eid"
    case tabCrypto = "tab-crypto"
    case tabSignature = "tab-signature"
    case tabSignButton = "tab-sign-button"
    case tabShareButton = "tab-share-button"
    case tabEncryptButton = "tab-encrypt-button"
    case tabDecryptButton = "tab-decrypt-button"
    case tabConfirmButton = "tab-confirm-button"
    case tabSelected = "tab-selected"
    case tabUnselected = "tab-unselected"
    case signatureViewBeginLabel = "signature-view-begin-label"
    case signatureViewBeginButton = "signature-view-begin-button"
    case signatureDetailsTitle = "signature-details-title"
    case signingRecentContainers = "signing-recent-containers"
    case menuButton = "menu-button"
    case crashlyticsTitle = "crashlytics-title"
    case crashlyticsMessage = "crashlytics-message"
    case crashlyticsActionSend = "crashlytics-action-send"
    case crashlyticsActionAlwaysSend = "crashlytics-action-always-send"
    case crashlyticsActionDoNotSend = "crashlytics-action-do-not-send"
    case actionOk = "action-ok"
    case actionCancel = "action-cancel"
    case actionDelete = "action-delete"
    case actionSign = "action-sign"
    case actionDecrypt = "action-decrypt"
    case fileImportTitle = "file-import-title"
    case fileImportTitleAccessibility = "file-import-title-accessibility"
    case addresseeImportTitle = "addressee-import-title"
    case addresseeImportTitleAccessibility = "addressee-import-title-accessibility"
    case fileImportOpenExistingFailedAlertTitle = "file-import-open-existing-failed-alert-title"
    case fileImportOpenExistingFailedAlertMessage = "file-import-open-existing-failed-alert-message"
    case fileImportCreateNewFailedAlertTitle = "file-import-create-new-failed-alert-title"
    case fileImportCreateNewFailedAlertMessage = "file-import-create-new-failed-alert-message"
    case fileImportRemoveFile = "file-import-remove-file"
    case fileImportSaveFile = "file-import-save-file"
    case fileImportFileSaved = "file-import-file-saved"
    case fileImportFailedFileSave = "file-import-failed-file-save"
    case containerDetailsSigningSuccess = "container-details-signing-success"
    case containerDetailsDecryptionSuccess = "container-details-decryption-success"
    case containerDetailsFileAlreadyExists = "container-details-file-already-exists"
    case containerHeaderFilesTitle = "container-header-files-title"
    case containerHeaderCreateFilesTitle = "container-header-create-files-title"
    case containerEditNameButton = "container-edit-name-button"
    case containerErrorMessageFailedContainerNameChange = "container-error-message-failed-container-name-change"
    case containerHeaderCreateAddresseesTitle = "container-header-create-addressee-title"
    case containerHeaderTimestampTitle = "container-header-timestamp-title"
    case containerHeaderSignaturesTitle = "container-header-signatures-title"
    case containerRowEditRemove = "container-row-edit-remove"
    case containerHeaderTitle = "container-header-title"
    case containerErrorMessageInvalidSignature = "container-error-message-invalid-signature"
    case containerErrorMessageInvalidSignatures = "container-error-message-invalid-signatures"
    case containerErrorMessageUnknownSignature = "container-error-message-unknown-signature"
    case containerErrorMessageUnknownSignatures = "container-error-message-unknown-signatures"
    case containerSignatureSigned = "container-signature-signed"
    case containerMissingSignatures = "container-missing-signatures"
    case containerMissingAddressees = "container-missing-addressees"
    case containerSignatureStatusValid = "container-signature-status-valid"
    case containerSignatureStatusWarning = "container-signature-status-warning";
    case containerSignatureStatusNonQscd = "container-signature-status-non-qscd";
    case containerSignatureStatusInvalid = "container-signature-status-invalid";
    case containerSignatureStatusUnknown = "container-signature-status-unknown";
    case conatinerSignatureTestSignatureTitle = "container-signature-test-signature-title";
    case containerTimestampInvalid = "container-timestamp-invalid";
    case challengeCodeLabel = "challenge-code-label"
    case simToolkitSignDocumentTitle = "sim-toolkit-sign-document-title"
    case mobileIdTimeoutMessage = "mobile-id-timeout-message"
    case errorAlertTitleGeneral = "error-alert-title-general"
    case errorAlertOpenLink = "error-alert-open-link"
    case signatureRemoveConfirmMessage = "signature-remove-confirm-message"
    case datafileRemoveConfirmMessage = "datafile-remove-confirm-message"
    case mobileIdTitle = "mobile-id-title"
    case mobileIdPhoneTitle = "mobile-id-phone-title"
    case mobileIdIdcodeTitle = "mobile-id-idcode-title"
    case mobileIdRememberMe = "mobile-id-remember-me"
    case mobileIdVerificationCodeTitle = "mobile-id-verification-code-title"
    case mobileIdChallengeTitle = "mobile-id-challenge-title"
    case mobileIdChallengeWaitingForResponse = "mobile-id-challenge-waiting-response"
    case smartIdTitle = "smart-id-title"
    case smartIdCountryTitle = "smart-id-country-title"
    case smartIdCountryEstiona = "smart-id-country-estonia"
    case smartIdCountryLithuania = "smart-id-country-lithuania"
    case smartIdCountryLatvia = "smart-id-country-latvia"
    case smartIdChallengeTitle = "smart-id-challenge-title"
    case containerSignTitle = "container-sign-title"
    case containerEncryptionTitle = "container-encryption-title"
    case containerDecryptionTitle = "container-decryption-title"
    case containerAddresseeTitle = "container-addressee-title"
    case containerValidateTitle = "container-validate-title"
    case containerValidating = "container-validating"
    case importingFilesProgressMessage = "importing-files-progress-message"
    case mobileIdSignHelpTitle = "mobile-id-sign-help-title"
    case smartIdSignHelpTitle = "smart-id-sign-help-title"
    case doneButtonTitle = "done-button-title"
    case recentContainersEmptyListTitle = "recent-containers-empty-list-title"
    case recentContainersEmptySearchMessage = "recent-containers-empty-search-message"
    case searchContainerFile = "search-container-file"
    case signTitleMobileId = "sign-title-mobile-id"
    case signTitleSmartId = "sign-title-smart-id"
    case signTitleIdCard = "sign-title-id-card"
    case cardReaderStateReaderNotFound = "card-reader-state-reader-not-found"
    case cardReaderStateIdCardNotFound = "card-reader-state-id-card-not-found"
    case cardReaderStateIdCardConnected = "card-reader-state-id-card-connected"
    case cardReaderStateInitial = "card-reader-state-initial"
    case cardReaderStateReadyForPin2 = "card-reader-state-ready-for-pin2"
    case cardReaderStateReadyForPin1 = "card-reader-state-ready-for-pin1"
    case signingInProgress = "signing-in-progress"
    case decryptionInProgress = "decryption-in-progress"
    case wrongPin2 = "wrong-pin2"
    case wrongPin1 = "wrong-pin1"
    case wrongPin2Single = "wrong-pin2-single"
    case wrongPin1Single = "wrong-pin1-single"
    case pin2TextfieldLabel = "pin2-textfield-label"
    case pin1TextfieldLabel = "pin1-textfield-label"
    case pin2BlockedAlert = "pin2-blocked-alert"
    case pin1BlockedAlert = "pin1-blocked-alert"
    case genericErrorMessage = "generic-error-message"
    case decryptionErrorMessage = "decryption-error-message"
    case signingErrorTooManyRequests = "signing-error-too-many-requests"
    case noConnectionMessage = "no-response-error"
    case ocspInvalidTimeSlot = "ocsp-invalid-time-slot"
    case signingAbortedMessage = "signing-aborted-message"
    case myEidStatusReaderNotFound = "my-eid-status-reader-not-found"
    case myEidStatusCardNotFound = "my-eid-status-card-not-found"
    case myEidStatusRequestingData = "my-eid-status-requesting-data"
    case myEidCertExpired = "my-eid-cert-expired"
    case myEidCertValid = "my-eid-cert-valid"
    case myEidInfoItemGivenNames = "my-eid-info-item-given-names"
    case myEidInfoItemSurname = "my-eid-info-item-surname"
    case myEidInfoItemPersonalCode = "my-eid-info-item-personal-code"
    case myEidInfoItemCitizenship = "my-eid-info-item-citizenship"
    case myEidInfoItemDocumentNumber = "my-eid-info-item-document-number"
    case myEidInfoItemExpiryDate = "my-eid-info-item-expiry-date"
    case myEidInfoMyEid = "my-eid-info-my-eid"
    case myEidInfoMyEidAccessibility = "my-eid-info-my-eid-accessibility"
    case myEidInfoMyEidIdCard = "my-eid-info-my-eid-id-card"
    case myEidInfoMyEidMobileId = "my-eid-info-my-eid-mobile-id"
    case myEidInfoMyEidDigiId = "my-eid-info-my-eid-digi-id"
    case myEidInfoMyEidUnknown = "my-eid-info-my-eid-unknown"
    case myEidInfoMyEidEResident = "my-eid-info-my-eid-e-resident"
    case fileImportAlreadyInProgressMessage = "file-import-already-in-progress-message"
    case myEidCertInfoExpired = "my-eid-cert-info-expired"
    case myEidCertInfoValid = "my-eid-cert-info-valid"
    case myEidCertInfoStatusValid = "my-eid-cert-info-status-valid"
    case myEidCertInfoStatusExpired = "my-eid-cert-info-status-expired"
    case myEidInfoPin1Title = "my-eid-info-pin1-title"
    case myEidInfoPin2Title = "my-eid-info-pin2-title"
    case myEidInfoPukTitle = "my-eid-info-puk-title"
    case myEidInfoPin1LinkText = "my-eid-info-pin1-link-text"
    case myEidInfoPin2LinkText = "my-eid-info-pin2-link-text"
    case myEidInfoPukLinkText = "my-eid-info-puk-link-text"
    case myEidInfoPin1ButtonTitle = "my-eid-info-pin1-button-title"
    case myEidInfoPin2ButtonTitle = "my-eid-info-pin2-button-title"
    case myEidInfoPukButtonTitle = "my-eid-info-puk-button-title"
    case myEidInfoPukCertInfoText = "my-eid-info-puk-cert-info-text"
    case myEidInfoPinPukSegmentTitle = "my-eid-info-pin-puk-segment-title"
    case myEidInfoPin1BlockedMessage = "my-eid-info-pin1-blocked-message"
    case myEidInfoPin2BlockedMessage = "my-eid-info-pin2-blocked-message"
    case myEidInfoPukBlockedMessage = "my-eid-info-puk-blocked-message"
    case myEidUnblockPin1ButtonTitle = "my-eid-unblock-pin1-button-title"
    case myEidUnblockPin2ButtonTitle = "my-eid-unblock-pin2-button-title"
    case myEidHowToGetCodesMessage = "my-eid-how-to-get-codes-message"
    case myEidCodeChangedSuccessMessage = "my-eid-code-changed-success-message"
    case myEidCodeUnblockedSuccessMessage = "my-eid-code-unblocked-success-message"
    case myEidWrongCodeMessage = "my-eid-wrong-code-message"
    case myEidWrongCodeMessageSingular = "my-eid-wrong-code-message-singular"
    case myEidCodeBlockedMessage = "my-eid-code-blocked-message"
    case myEidInfoBulletSameCodesWarning = "my-eid-info-bullet-same-codes-warning"
    case myEidInfoBulletAuthCertInfo = "my-eid-info-bullet-auth-cert-info"
    case myEidInfoBulletPin1BlockedWarning = "my-eid-info-bullet-pin1-blocked-warning"
    case myEidInfoBulletForgotCodeNote = "my-eid-info-bullet-forgot-code-note"
    case myEidInfoBulletPukEnvelopeInfo = "my-eid-info-bullet-puk-envelope-info"
    case myEidInfoBulletSignCertInfo = "my-eid-info-bullet-sign-cert-info"
    case myEidInfoBulletPin2BlockedWarning = "my-eid-info-bullet-pin2-blocked-warning"
    case myEidInfoBulletPukUnblockInfo = "my-eid-info-bullet-puk-unblock-info"
    case myEidInfoBulletPukBlockedWarning = "my-eid-info-bullet-puk-blocked-warning"
    case myEidChangeCodeTitle = "my-eid-change-code-title"
    case myEidUnblockCodeTitle = "my-eid-unblock-code-title"
    case myEidCurrentCodeLabel = "my-eid-current-code-label"
    case myEidNewCodeLabel = "my-eid-new-code-label"
    case myEidNewCodeAgainLabel = "my-eid-new-code-again-label"
    case myEidDiscardButtonTitle = "my-eid-discard-button-title"
    case myEidConfirmChangeButtonTitle = "my-eid-confirm-change-button-title"
    case myEidConfirmUnblockButtonTitle = "my-eid-confirm-unblock-button-title"
    case myEidErrorNewCodeTooShort = "my-eid-error-new-code-too-short"
    case myEidErrorCurrentCodeTooShort = "my-eid-error-current-code-too-short"
    case myEidErrorCodesMismatch = "my-eid-error-codes-mismatch"
    case myEidErrorCodesAreSame = "my-eid-error-codes-are-same"
    case myEidErrorCodeContainedInPersonalCode = "my-eid-error-code-contained-in-personal-code"
    case myEidErrorCodeIsDateOfBirth = "my-eid-error-code-is-date-of-birth"
    case myEidErrorCodeTooEasy = "my-eid-error-code-too-easy"
    case settingsTitle = "settings-title"
    case settingsPhoneNumberTitle = "settings-phone-number-title"
    case settingsPhoneNumberPlaceholder = "settings-phone-number-placeholder"
    case settingsIdCodeTitle = "settings-id-code-title"
    case settingsRpUuidTitle = "settings-rpuuid-title"
    case settingsRpUuidPlaceholder = "settings-rpuuid-placeholder"
    case settingsTimestampUrlTitle = "settings-timestamp-url-title"
    case settingsTimestampUrlPlaceholder = "settings-timestamp-url-placeholder"
    case settingsTimestampUseDefaultTitle = "settings-timestamp-use-default-title"
    case settingsIdCodePlaceholder = "settings-id-code-placeholder"
    case diagnosticsTitle = "diagnostics-title"
    case diagnosticsAppVersion = "diagnostics-app-version"
    case diagnosticsIosVersion = "diagnostics-ios-version"
    case diagnosticsLibrariesLabel = "diagnostics-libraries-label"
    case centralConfigurationLabel = "central-configuration"
    case lastUpdateCheckDateLabel = "last-update-check"
    case updateDateLabel = "update-date"
    case refreshConfigurationLabel = "refresh-configuration"
    case successNotificationDialogLabel = "success-notification-dialog-label"
    case successNotificationDialogDontShowAgain = "success-notification-dialog-dont-show-again"
    case aboutTitle = "about-title"
    case jailbreakMessage = "jailbreak-message"
    case cryptoViewBeginLabel = "crypto-view-begin-label"
    case cryptoViewBeginButton = "crypto-view-begin-button"
    case cryptoEmptyLdapLabel = "crypto-empty-ldap-label"
    case cryptoEncryptionErrorText = "crypto-encryption-error-text"
    case cryptoLdapSearchPlaceholder = "crypto-ldap-search-placeholder"
    case cryptoEncryptionSuccess = "crypto-encryption-success"
    case cryptoNoAddresseesWarning = "crypto-no-addressees-warning"
    case cryptoValidTo = "crypto-valid-to";
    case cryptoTypeIdCard = "crypto-type-id-card";
    case cryptoTypeDigiId = "crypto-type-digi-id";
    case cryptoTypeESeal = "crypto-type-eseal";
    case cryptoTypeMobileId = "crypto-type-mobile-id";
    case cryptoTypeUnknown = "crypto-type-unknown";
    case cryptoAddAddresseeButtonTitle = "crypto-add-addressee-button-title";
    case cryptoAddresseeAddedButtonTitle = "crypto-addressee-added-button-title";
    case cryptoRemoveAddresseeButton = "crypto-remove-addressee-button"
    case datafilePreviewFailed = "datafile-preview-failed";
}
