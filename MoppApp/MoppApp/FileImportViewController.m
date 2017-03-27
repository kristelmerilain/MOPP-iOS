//
//  FileImportViewController.m
//  MoppApp
//
//  Created by Ants Käär on 16.01.17.
//  Copyright © 2017 Mobi Lab. All rights reserved.
//

#import "FileImportViewController.h"
#import "FileManager.h"
#import "ContainerCell.h"
#import "DateFormatter.h"
#import "NoContainersCell.h"
#import "DefaultsHelper.h"
#import "Constants.h"

@interface FileImportViewController ()

@property (strong, nonatomic) NSArray *unsignedContainers;
@property (strong, nonatomic) NSArray *filteredUnsignedContainers;

@end

@implementation FileImportViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self setTitle:Localizations.FileImportTitle];
  
  self.unsignedContainers = [NSArray array];
  
  UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:Localizations.ActionCancel style:UIBarButtonItemStylePlain target:self action:@selector(cancelButtonPressed)];
  [self.navigationItem setRightBarButtonItem:cancelButton];
  
  UIBarButtonItem *createContainerButton = [[UIBarButtonItem alloc] initWithTitle:Localizations.FileImportCreateContainerButton style:UIBarButtonItemStylePlain target:self action:@selector(createNewContainer)];
  [self.navigationItem setLeftBarButtonItem:createContainerButton];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  [self reloadData];
}

- (void)cancelButtonPressed {
  [self deleteTempFiles];
  [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (NSString *)fileNamesStringExtensionIncluded:(BOOL)includeExtension {
  NSMutableString *names = [NSMutableString new];
  
  for (NSString *filePath in self.dataFilePaths) {
    NSString *name = [filePath lastPathComponent];
    if (!includeExtension) {
      name = [name stringByDeletingPathExtension];
    }
    
    if (names.length > 0) {
      [names appendString:[NSString stringWithFormat:@", %@", name]];
    } else {
      [names appendString:name];
    }
  }
  
  return names;
}

- (void)createNewContainer {

  NSString *containerFileName = [NSString stringWithFormat:@"%@.%@", [[[self.dataFilePaths firstObject] lastPathComponent] stringByDeletingPathExtension], [DefaultsHelper getNewContainerFormat]];
  NSString *containerPath = [[FileManager sharedInstance] filePathWithFileName:containerFileName];
  
  [[MoppLibContainerActions sharedInstance] createContainerWithPath:containerPath withDataFilePaths:self.dataFilePaths success:^(MoppLibContainer *container) {
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationContainerChanged object:nil userInfo:@{kKeyContainerNew:container}];
    
    [self deleteTempFiles];
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
      if (self.delegate) {
        [self.delegate openContainerDetails:container];
      }
    }];
  } failure:^(NSError *error) {
    
  }];
}

- (void)reloadData {
  [[MoppLibContainerActions sharedInstance] getContainersWithSuccess:^(NSArray *containers) {
    NSMutableArray *unsign = [NSMutableArray array];
    for (MoppLibContainer *container in containers) {
      if(!container.isSigned) {
        [unsign addObject:container];
      }
    }
    self.unsignedContainers = [unsign copy];
    self.filteredUnsignedContainers = self.unsignedContainers;
    [super reloadData];
    
    if (self.filteredUnsignedContainers.count == 0) {
      [self createNewContainer];
    } else {
      UIAlertController *alert = [UIAlertController alertControllerWithTitle:Localizations.FileImportTitle message:Localizations.FileImportInfo([self fileNamesStringExtensionIncluded:YES]) preferredStyle:UIAlertControllerStyleAlert];
      [alert addAction:[UIAlertAction actionWithTitle:Localizations.ActionCreateNewDocument style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self createNewContainer];
      }]];
      [alert addAction:[UIAlertAction actionWithTitle:Localizations.ActionAddToDocument style:UIAlertActionStyleDefault handler:nil]];
      [self presentViewController:alert animated:YES completion:nil];
    }
  } failure:^(NSError *error) {
    
  }];
  
}

- (void)filterContainers:(NSString *)searchString {
  if (searchString.length == 0) {
    self.filteredUnsignedContainers = self.unsignedContainers;
  } else {
    self.filteredUnsignedContainers = [self.unsignedContainers filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF.fileName contains[c] %@", searchString]];
  }
  [super filterContainers:searchString];
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (self.filteredUnsignedContainers.count > 0) {
    return self.filteredUnsignedContainers.count;
  } else {
    return 1;
  }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (self.filteredUnsignedContainers.count > 0) {
    MoppLibContainer *container = [self.filteredUnsignedContainers objectAtIndex:indexPath.row];
    ContainerCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ContainerCell class]) forIndexPath:indexPath];
    [cell.titleLabel setText:container.fileName];
    [cell.dateLabel setText:[[DateFormatter sharedInstance] dateToRelativeString:[container.fileAttributes fileCreationDate]]];
    return cell;
  } else {
    NoContainersCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([NoContainersCell class]) forIndexPath:indexPath];
    return cell;
  }
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
  if (self.filteredUnsignedContainers.count == 0) {
    return;
  }
  
  MoppLibContainer *origContainer = [self.filteredUnsignedContainers objectAtIndex:indexPath.row];
  [[MoppLibContainerActions sharedInstance] addDataFilesToContainerWithPath:origContainer.filePath withDataFilePaths:self.dataFilePaths success:^(MoppLibContainer *container) {
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationContainerChanged object:nil userInfo:@{kKeyContainerNew:container, kKeyContainerOld:origContainer}];

    [self deleteTempFiles];
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
      if (self.delegate) {
        [self.delegate openContainerDetails:container];
      }
    }];
  } failure:^(NSError *error) {
    
  }];
}

- (void)deleteTempFiles {
  [[FileManager sharedInstance] removeFilesAtPaths:self.dataFilePaths];
}

@end
