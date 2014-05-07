//
//  ViewController.h
//  picker
//
//  Created by Manoj Kumar Gupta on 13/09/13.
//  Copyright (c) 2013 manojkumargupta030@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIView *view1;
    UIView *view2;
    UIView *view3;
}
- (IBAction)left:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)top:(id)sender;
- (IBAction)bottom:(id)sender;
- (IBAction)up:(id)sender;
- (IBAction)down:(id)sender;
- (IBAction)slow:(id)sender;

- (IBAction)fast:(id)sender;
-(void)setUpView;
@end
