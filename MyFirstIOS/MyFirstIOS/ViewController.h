//
//  ViewController.h
//  MyFirstIOS
//
//  Created by liuliu on 10/16/16.
//  Copyright © 2016 liuliu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *status;
    UILabel *result;
}

@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UILabel *result;

- (IBAction)callHeaders;
- (IBAction)callTails;

@end

