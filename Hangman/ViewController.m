//
//  ViewController.m
//  Hangman
//
//  Created by Sarmila on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"
#import "HangmanWordList.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UIButton *guessBtn;

@end

@implementation ViewController
HangmanWordList *listObject;
NSString *currentWord;
int guessCounter=0;

- (IBAction)guessBtnPress:(id)sender {
    guessCounter++;
    if(guessCounter==10){
        _result.text=@"Game Over";
        _guessBtn.enabled = NO;
    }
    else{
        //[self isCharInCurrentWord];
        if ([self isCharInCurrentWord]) {
           _result.text=@"Matched!";
        }
        else{
        _result.text=@"No Match!";
        }
        
    }
}
-(BOOL)isCharInCurrentWord{
    return [currentWord containsString:_inputText.text];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    listObject = [[HangmanWordList alloc]init];
    currentWord = [listObject pickRandomWord];
    _result.text = [self generateBlankString];
    NSLog(currentWord);
}

- (NSString *)generateBlankString {
    NSMutableString *blankString= [NSMutableString stringWithString:@"_"];
    
    for(int i = 1; i<[currentWord length];i++)
    {
        [blankString appendString:[NSString stringWithFormat:@" _"]];
    }
    
    return blankString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
