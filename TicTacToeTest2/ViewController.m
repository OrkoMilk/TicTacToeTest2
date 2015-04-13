//
//  ViewController.m
//  TicTacToeTest2
//
//  Created by Орест on 22.03.15.
//  Copyright (c) 2015 HOME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int _c[9];
}
@property BOOL player;
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b8;
@property (weak, nonatomic) IBOutlet UIButton *b9;

@end

@implementation ViewController

-(IBAction)playerTurn:(UIButton *)sender{
    [sender setEnabled:NO];

    int tag = sender.tag;

    if (_player ) {
        _c[tag] = 1;
        [sender setTitle:@"O" forState:UIControlStateNormal];
    } else {
        _c[tag] = 2;
        [sender setTitle:@"X" forState:UIControlStateNormal];
    }
    _player = !_player;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)newGame:(id)sender {
    _player= NO;
    NSArray *buttons = @[_b1,_b2,_b3,_b4,_b5,_b6,_b7,_b8,_b9];
    for (UIButton *b in buttons) {
        [b setEnabled:YES ];
        [b setTitle: @"" forState:UIControlStateNormal];
    }
    
}

@end
