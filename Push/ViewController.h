//
//  ViewController.h
//  Push
//
//  Created by Robson Saraiva Ximenes on 02/01/13.
//  Copyright (c) 2013 SERPRO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *server;
@property (weak, nonatomic) IBOutlet UILabel *device;
@property (weak, nonatomic) IBOutlet UILabel *so;

@property (weak, nonatomic) IBOutlet UILabel *name;
- (IBAction)registrar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *token;
@end
