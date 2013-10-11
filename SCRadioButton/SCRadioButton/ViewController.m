//
//  ViewController.m
//  SCRadioButton
//
//  Created by Shoaib Mac Mini on 11/10/2013.
//  Copyright (c) 2013 Shoaib Mac Mini. All rights reserved.
//

#import "ViewController.h"
#import "SCRadioButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SCRadioButton* radionButton1 = [[SCRadioButton alloc] initWithNormalImageName:@"button.png" SelectedImageName:@"button2.png" Group:1];

    SCRadioButton* radionButton2 = [[SCRadioButton alloc] initWithNormalImageName:@"button.png" SelectedImageName:@"button2.png" Group:1];
    
    SCRadioButton* radionButton3 = [[SCRadioButton alloc] initWithNormalImageName:@"button.png" SelectedImageName:@"button2.png" Group:1];
    
    [radionButton1 setFrame:CGRectMake(80, 100, radionButton1.frame.size.width, radionButton1.frame.size.height)];
    
    [radionButton2 setFrame:CGRectMake(140, 100, radionButton2.frame.size.width, radionButton1.frame.size.height)];
    
    [radionButton3 setFrame:CGRectMake(200, 100, radionButton3.frame.size.width, radionButton1.frame.size.height)];
    
    [self.view addSubview:radionButton1];
    [self.view addSubview:radionButton2];
    [self.view addSubview:radionButton3];
} //F.E.

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
} //F.E.

@end
