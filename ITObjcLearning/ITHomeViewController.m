//
//  ITHomeViewController.m
//  ITObjcLearning
//
//  Created by 许龙 on 2018/6/25.
//  Copyright © 2018 许龙. All rights reserved.
//

#import "ITHomeViewController.h"

@interface ITHomeViewController ()

@property (nonatomic, strong) NSMutableArray *list;

@end

@implementation ITHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ITLearning"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ITLearning" forIndexPath:indexPath];
    
    if (indexPath.row < self.list.count) {
        NSDictionary *dict = self.list[indexPath.row];
        cell.textLabel.text = dict[@"name"];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row < self.list.count) {
        NSDictionary *dict = self.list[indexPath.row];
        NSString *className = dict[@"class"];
        BOOL isNib = [dict[@"nib"] boolValue];
        
        Class cls = NSClassFromString(className);
        id obj = nil;
        if (isNib) {
            obj = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:className];
        } else {
            obj = [[cls alloc] init];
        }
        
        if ([obj isKindOfClass:[UIViewController class]]) {
            BOOL animated = YES;
            if (dict[@"animate"]) {
                animated = [dict[@"animate"] boolValue];
            }
            
            [self.navigationController pushViewController:obj animated:animated];
        }
    }
}

- (NSMutableArray *)list {
    if (!_list) {
        _list = [NSMutableArray array];
        [_list addObject:@{ @"name" : @"RetainCount", @"class" : @"ITRetainCount" }];
        [_list addObject:@{ @"name" : @"ARC", @"class" : @"ITARC" }];
        [_list addObject:@{ @"name" : @"String", @"class" : @"ITString" }];
        [_list addObject:@{ @"name" : @"Autorelease", @"class" : @"ITAutoReleaseViewController", @"nib" : @(YES), @"animate" : @(YES) }];
        [_list addObject:@{ @"name" : @"Autorelease without animation", @"class" : @"ITAutoReleaseViewController", @"nib" : @(YES), @"animate" : @(NO) }];
        [_list addObject:@{ @"name" : @"ITMutableArray", @"class" : @"ITMutableArray" }];
        [_list addObject:@{ @"name" : @"ITCFoundation", @"class" : @"ITCFoundation" }];
        [_list addObject:@{ @"name" : @"ITWeak", @"class" : @"ITWeak" }];
    }
    return _list;
}

@end
