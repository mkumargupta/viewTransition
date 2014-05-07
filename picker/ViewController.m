//
//  ViewController.m
//  picker
//
//  Created by Manoj Kumar Gupta on 13/09/13.
//  Copyright (c) 2013 manojkumargupta030@gmail.com. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpView];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)setUpView{
    view1 = [[UIView alloc]initWithFrame:self.view.frame];
    view1.backgroundColor = [UIColor lightTextColor];
    view2 = [[UIView alloc]initWithFrame:self.view.frame];
    view2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];
    [self.view sendSubviewToBack:view1];
    [self.view sendSubviewToBack:view2];
    
}
-(void)doTransitionWithType:(UIViewAnimationTransition)animationTransitionType{
    if ([[self.view subviews] containsObject:view2 ]) {
        [UIView transitionFromView:view2
                            toView:view1
                          duration:2
                           options:animationTransitionType
                        completion:^(BOOL finished){
                            [view2 removeFromSuperview];
                        }];
      //  [UIView transitionFromView:view3 toView:view2 duration:3 options:animationTransitionType completion:^(BOOL finished){[view3 removeFromSuperview]{];
            
        [self.view addSubview:view1];
        [self.view sendSubviewToBack:view1];
    }
    else{
        
        [UIView transitionFromView:view1
                            toView:view2
                          duration:2
                           options:animationTransitionType
                        completion:^(BOOL finished){
                            [view1 removeFromSuperview];
                        }];
        [self.view addSubview:view2];
        [self.view sendSubviewToBack:view2];
        
    }
}


- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)left:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromLeft];
}

- (IBAction)right:(id)sender {
     [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromRight];
}

- (IBAction)top:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromTop];

}

- (IBAction)bottom:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromBottom];
}

- (IBAction)up:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionCurlUp];
}

- (IBAction)down:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionCurlDown];

}

- (IBAction)slow:(id)sender {
     [self doTransitionWithType:UIViewAnimationOptionTransitionCrossDissolve];
}

- (IBAction)fast:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionNone];
}
- (void)dealloc {

    [super dealloc];
}
@end
