//
//  NSString+calculate.h
//
//  Created by joanfen on 15/1/13.
//  Copyright (c) 2015年 芳仔小脚印. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
@interface NSString (calculate)

/*!
 *  @Author joanfen, 15-01-13 10:01:02
 *
 *  @brief  计算某个string在固定宽度下需要自适应的高度
 *
 *  @param font  显示string的字体大小
 *  @param width 固定宽度
 *
 *  @return 自适应的高度
 */
-(CGFloat)heightByFont:(UIFont *)font maxWidth:(CGFloat)width NS_AVAILABLE_IOS(6_0);


/*!
 *  @Author joanfen, 15-01-13 10:01:14
 *
 *  @brief  计算某个string在固定高度下需要自适应的宽度
 *
 *  @param font   显示string的字体大小
 *  @param height 固定高度
 *
 *  @return 自适应的宽度
 */
-(CGFloat)widthByFont:(UIFont *)font maxHeight:(CGFloat)height NS_AVAILABLE_IOS(6_0);


@end

@interface NSAttributedString (calculate)
/*!
 *  @author joanfen, 15-06-05 11:06:13
 *
 *  @brief  计算某个 AttributeString 在固定宽度下完全显示需要的高度
 *
 *  @param width 指定的最大宽度
 *
 *  @return 所需高度
 */
-(CGFloat)heightByMaxWidth:(CGFloat)width NS_AVAILABLE_IOS(6_0);

/*!
 *  @author joanfen, 15-06-05 11:06:38
 *
 *  @brief  计算某个 AttributeString 在固定高度下完全显示需要的宽度
 *
 *  @param height 指定最大高度
 *
 *  @return 所需宽度
 */
-(CGFloat)widthByMaxHeight:(CGFloat)height NS_AVAILABLE_IOS(6_0);

/*!
 *  @author joanfen, 15-06-05 11:06:33
 *
 *  @brief  计算某个 AttributeString 在固定宽度下完全显示需要的高度
 *
 *  @param font  显示字体
 *  @param width 指定宽度
 *
 *  @return 所需高度
 */
-(CGFloat)heightByFont:(UIFont *)font maxWidth:(CGFloat)width NS_AVAILABLE_IOS(6_0);

/*!
 *  @author joanfen, 15-06-05 11:06:24
 *
 *  @brief  计算某个 AttributeString 在固定高度下完全显示需要的宽度
 *
 *  @param font   显示字体
 *  @param height 指定高度
 *
 *  @return 所需宽度
 */
-(CGFloat)widthByFont:(UIFont *)font maxHeight:(CGFloat)height NS_AVAILABLE_IOS(6_0);
@end