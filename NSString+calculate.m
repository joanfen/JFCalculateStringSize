//
//  NSString+calculate.m
//
//  Created by joanfen on 15/1/13.
//  Copyright (c) 2015年 芳仔小脚印. All rights reserved.
//

#import "NSString+calculate.h"

@implementation NSString (calculate)

CGFloat const JFMaxWidth = 1000;
CGFloat const JFMaxHegith = 10000;

-(CGFloat)widthByFont:(UIFont *)font maxHeight:(CGFloat)height{
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:self];
    CGFloat width           = [str widthByFont:font
                                     maxHeight:height];
    return width;
}

-(CGFloat)heightByFont:(UIFont *)font maxWidth:(CGFloat)width{
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:self];
    CGFloat height          = [str heightByFont:font
                                       maxWidth:width];
    return height;
}

@end

#pragma mark - NSAttributedString
@implementation NSAttributedString (calculate)

-(CGFloat)heightByMaxWidth:(CGFloat)width{
    CGSize autoSize   = CGSizeMake(width, JFMaxHegith);
    CGSize finalSize  = [self sizeByAutoSize:autoSize
                                        font:nil];
    return finalSize.height;
}

-(CGFloat)widthByMaxHeight:(CGFloat)height{
    CGSize autoSize  = CGSizeMake(JFMaxWidth, height);
    CGSize finalSize = [self sizeByAutoSize:autoSize
                                       font:nil];
    return finalSize.width;
}

-(CGFloat)heightByFont:(UIFont *)font maxWidth:(CGFloat)width{
    CGSize autoSize      = CGSizeMake(width, JFMaxHegith);
    CGSize finalSize     =  [self sizeByAutoSize:autoSize
                                     font:font];
    return finalSize.height;
}


-(CGFloat)widthByFont:(UIFont *)font maxHeight:(CGFloat)height{
    CGSize autoSize = CGSizeMake(JFMaxWidth, height);
    CGSize final =  [self sizeByAutoSize:autoSize font:font];
    return final.width;
}


-(CGSize)sizeByAutoSize:(CGSize)autoSize font:(UIFont *)font{
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    CGSize finalSize; CGRect rect;
    if (font) {
        NSDictionary *fontAttribute;
        NSMutableAttributedString *attributeStr;
        fontAttribute = @{NSFontAttributeName:font};
        attributeStr  = [[NSMutableAttributedString alloc] initWithString:self.string
                                                               attributes:fontAttribute];
        rect = [self boundingRectWithSize:autoSize
                                  options:options
                                  context:nil];
    }
    else{
        rect = [self boundingRectWithSize:autoSize
                                  options:options
                                  context:nil];
    }
    
    finalSize = rect.size;
    return finalSize;
}
@end