//
//  SCRadioButton.m
//  SCRadioButton
//
//  Created by Shoaib Mac Mini on 11/10/2013.
//  Copyright (c) 2013 Shoaib Mac Mini. All rights reserved.
//

#import "SCRadioButton.h"

#define SC_RADIO_BUTTON_OBSERVER @"scRadioButtonObserver"

@implementation SCRadioButton
@synthesize group = group_;

+ (id)buttonWithNormalImageName:(NSString*)normalImgName SelectedImageName:(NSString*)selectedImgName Group:(NSInteger)group
{
    return [[SCRadioButton alloc] initWithNormalImageName:normalImgName SelectedImageName:selectedImgName Group:group];
} //F.E.


#pragma mark - init
- (id)initWithNormalImageName:(NSString*)normalImgName SelectedImageName:(NSString*)selectedImgName Group:(NSInteger)group

{
    assert(normalImgName); // Normal Image name is not giving
    assert(selectedImgName);  // Selected Image name is not giving
    
    group_ = group;
    
    UIImage* normalImage    =   [UIImage imageNamed:normalImgName];
    UIImage* selectedImage  =   [UIImage imageNamed:selectedImgName];
    
    assert(normalImage); // Normal Image not found
    assert(selectedImage);  // Selected Image  not found
    
    if (self = [super initWithFrame:CGRectMake(0, 0, normalImage.size.width, normalImage.size.height)]) {
        
        NSLog(@"size : %@", NSStringFromCGSize(normalImage.size));
        
        [self setImage:normalImage forState:UIControlStateNormal];
        [self setImage:selectedImage forState:UIControlStateSelected];
        
        //--
        [self addTarget:self action:@selector(buttonTapHandler:) forControlEvents:UIControlEventTouchUpInside];
        
        //--
        [self addNotificationCenterObserver];
    }
    return self;
} //F.E.

-(void) addNotificationCenterObserver {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notifcationReceiveHandler:) name:SC_RADIO_BUTTON_OBSERVER object:nil];
} //F.E.

-(void) removeNotificationCenterObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
} //F.E.


-(void) buttonTapHandler:(id) sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:SC_RADIO_BUTTON_OBSERVER object:self];
} //F.E.


- (void) notifcationReceiveHandler:(NSNotification *) notification {
    SCRadioButton* btn = (SCRadioButton*)notification.object;
    
    if (btn.group != group_)
    {return;}
    
    if ([btn isEqual:self]) {
        [self setSelected:true];
    }
    else {
        [self setSelected:false];
    }
} //F.E.

-(void) dealloc {
    [self removeNotificationCenterObserver];
    //--
    [super dealloc];
} //F.E.

@end
