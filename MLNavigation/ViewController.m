//
//  ViewController.m
//  MLNavigation
//
//  Created by Molon on 13-9-25.
//  Copyright (c) 2013年 Molon. All rights reserved.
//

#import "ViewController.h"

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
	// Do any additional setup after loading the view.
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, 280, 280)];
    label.text = [NSString stringWithFormat:@"%d",self.navigationController.viewControllers.count];
    label.font = [UIFont systemFontOfSize:250];
    label.textColor = [UIColor grayColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 285, 220, 50)];
    [button setBackgroundColor:[UIColor grayColor]];
    [button setTitle:@"Push a new controller" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
	
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = [NSString stringWithFormat:@"No.%d Page",self.navigationController.viewControllers.count];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - User Interaction -

- (void)pressBtn:(UIButton *)sender
{
    
    ViewController *vc = [[ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
