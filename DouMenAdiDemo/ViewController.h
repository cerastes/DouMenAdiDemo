//
//  ViewController.h
//  DouMenAdiDemo
//
//  Created by JOB on 16/3/21.
//  Copyright © 2016年 mobi.wonders.ios.apps.cswhy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMAdView.h"
@interface ViewController : UIViewController<DMAdViewDelegate>
{
    DMAdView *_dmAdView;
}
- (IBAction)show1:(id)sender;

- (IBAction)show2:(id)sender;

- (IBAction)show3:(id)sender;

- (IBAction)show4:(id)sender;

- (IBAction)show5:(id)sender;

- (IBAction)show6:(id)sender;
@end

