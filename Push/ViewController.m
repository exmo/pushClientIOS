//
//  ViewController.m
//  Push
//
//  Created by Robson Saraiva Ximenes on 02/01/13.
//  Copyright (c) 2013 SERPRO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize server, name,device,so,token;

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [name setText:[defaults valueForKey:@"name"]];
    [token setText:[defaults valueForKey:@"token"]];
    [device setText:[defaults valueForKey:@"device"]];
    [so setText:[defaults valueForKey:@"so"]];

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registrar:(id)sender {
    UIApplication* app = [UIApplication sharedApplication];
    app.networkActivityIndicatorVisible = YES;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *urlAddress = [NSString stringWithFormat:@"%@/rest/push/register/%@/%@/%@/%@",server.text,[defaults valueForKey:@"token"], [defaults valueForKey:@"name"], [defaults valueForKey:@"device"], [defaults valueForKey:@"so"] ];
    
    NSData* data = [NSData dataWithContentsOfURL:
                    [NSURL URLWithString: urlAddress] ];
    
    app.networkActivityIndicatorVisible = NO;
    
    if(data!= nil){
        
    }
    
    
}

#pragma mark UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
