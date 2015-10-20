//
//  main.m
//  WordEffect
//
//  Created by Samer Rohani on 2015-10-19.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 255 unit long array of characters

        char inputChars[255];
        char choiceChar[255];
        
        NSLog(@"1 for uppercasing");
        NSLog(@"2 for lowercasing");
        NSLog(@"3 to convert ur numeric string to an int");
        NSLog(@"4 Add eh? to your string");
        NSLog(@"5 Ask me a question");
        NSLog(@"Please choose an option:");
        
        
        fgets(choiceChar, 255, stdin);

        
        printf("Input a string: \n");
        
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
//        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSString *choiceString = [NSString stringWithUTF8String:choiceChar];
        
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        choiceString = [choiceString stringByReplacingOccurrencesOfString:@"\n" withString:@""];

        
        if ([choiceString isEqualToString:@"1"]) {
            //CAP EVERYTHING
            inputString = [inputString uppercaseString];
            NSLog(@"UPPERCASE %@", inputString);
        }
        
        if ([choiceString isEqualToString:@"2"]) {
            //lower everything
            inputString = [inputString lowercaseString];
            NSLog(@"lowercase %@", inputString);
        }
        
        
        if ([choiceString isEqualToString:@"3"]) {
            //displaying an int
            if ([inputString intValue] == nil) {                           //need to fix error checking
                
                NSLog(@"incorrect");
                
            } else {
                
                NSLog(@"%d", [inputString intValue]);
                
            }
            
        }
        
        if ([choiceString isEqualToString:@"4"]) {
            //add eh to the end of the string
            NSString *eh = @"..eh?";
            inputString = [inputString stringByAppendingString:eh];
            NSLog(@"%@", inputString);
        }
        
        if ([choiceString isEqualToString:@"5"]) {
            //if it ends in a ? I dont know and if it ends in a ! whoa calm down
            if ([inputString hasSuffix:@"?"]) {
                NSLog(@"I don't know");
            }
            if ([inputString hasSuffix:@"!"]) {
                NSLog(@"Whoa calm down, man");
            }
            
            
        }
        
        
        if ([choiceString isEqualToString:@"6"]) {
            //replace spaces with -
            inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", inputString);
        }
        
        

        
        
        
        
    }
    return 0;
}
