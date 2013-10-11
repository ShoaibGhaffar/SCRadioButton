//
//  SCRadioButton.h
//  SCRadioButton
//
//  Created by Shoaib Mac Mini on 11/10/2013.
//  Copyright (c) 2013 Shoaib Mac Mini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCRadioButton : UIButton {
    NSInteger group_;
}

@property (nonatomic, assign) NSInteger group;

+ (id)buttonWithNormalImageName:(NSString*)normalImgName SelectedImageName:(NSString*)selectedImgName Group:(NSInteger)group;
- (id)initWithNormalImageName:(NSString*)normalImgName SelectedImageName:(NSString*)selectedImgName Group:(NSInteger)group;
@end
