//
//  GTInitApi.h
//  GTKit
//
//  Created   on 13-2-21.
//  Copyright ©[Insert Year of First Publication] - 2014 Tencent.All Rights Reserved. This software is licensed under the terms in the LICENSE.TXT file that accompanies this software.
//
#ifdef __OBJC__
#import "GTInitApiForOC.h"
#endif

#ifdef GT_DEBUG_DISABLE

//------------------------ DISABLE GT BEGIN ---------------------------

#define GT_DEBUG_INIT
#define GT_DEBUG_HIDDEN true
#define GT_DEBUG_SET_HIDDEN(isShow)
#define GT_DEBUG_ALERT_HIDE
#define GT_DEBUG_SHOW_FLOATING
#define GT_AC_HIDE
#define GT_DETAIL_CLOSE
#define GT_AC_SHOW
#define GT_AC_HEADER_HEIGHT_SET(height)
#define GT_NSLOG_SWITCH_SET(on)

//------------------------ DISABLE GT END ------------------------------

#else
#include <stdbool.h>

//------------------------ FOR C Language BEGIN ------------------------

#define M_GT_EXTERN_INTERFACE

/**
 * @brief   初始化GT
 * @details 在被测应用启动后调用该接口，展示GT
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 * - (void)applicationDidFinishLaunching:(UIApplication *)application
 * {
 *    //被测应用启动相关代码
 *    //code...
 *    
 *    //初始化GT
 *    GT_DEBUG_INIT;
 * }
 * @endcode
 */
#define GT_DEBUG_INIT func_initGT() 
extern void func_initGT();

/**
 * @brief   获取GT隐藏属性
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 *    //获取GT隐藏属性
 *    GT_DEBUG_HIDDEN;
 * @endcode
 */
#define GT_DEBUG_HIDDEN func_getGTHidden()
extern bool func_getGTHidden();

/**
 * @brief   设置GT隐藏属性
 * @ingroup GT启动使用说明
 *
 * @param hidden [bool] 默认为false, false:显示GT true:隐藏GT
 * @return
 *
 * Example Usage:
 * @code
 *    //设置GT隐藏属性
 *    GT_DEBUG_SET_HIDDEN(true);
 * @endcode
 */
#define GT_DEBUG_SET_HIDDEN(hidden) func_setGTHidden(hidden)
extern void func_setGTHidden(bool hidden);

/**
 * @brief   隐藏协议提示框展示
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 *    //隐藏协议提示框展示
 *    GT_DEBUG_ALERT_HIDE;
 * @endcode
 */
#define GT_DEBUG_ALERT_HIDE func_hideAlert()
extern void func_hideAlert();


/**
 * @brief   设置logo显示位置
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 *    //设置logo显示位置
 *    GT_LOGO_POINT_SET(20,100);
 * @endcode
 */#define GT_LOGO_POINT_SET(x, y) func_setLogoPoint(x, y)
#import <UIKit/UIKit.h>
extern void func_setLogoPoint(CGFloat x, CGFloat y);

/**
 * @brief   展示GT悬浮框
 * @details 在被测应用设置完默认在悬浮框显示后调用该接口，展示GT悬浮框
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 * - (void)applicationDidFinishLaunching:(UIApplication *)application
 * {
 *    //被测应用启动相关代码
 *    //code...
 *
 *    //设置fileTransferResult在悬浮框显示
 *    GT_OC_OUT_DEFAULT_ON_AC(@"fileTransferResult", nil, nil);
 *
 *    //展示GT悬浮框
 *    GT_AC_SHOW;
 * }
 * @endcode
 */
#define GT_AC_SHOW func_showGTAC()
#define GT_DEBUG_SHOW_FLOATING func_showGTAC()
extern void func_showGTAC();

/**
 * @brief   隐藏GT悬浮框
 * @details 隐藏GT悬浮框
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 * - (void)applicationDidFinishLaunching:(UIApplication *)application
 * {
 *    //被测应用启动相关代码
 *    //code...
 *
 *    //设置fileTransferResult在悬浮框显示
 *    GT_OC_OUT_DEFAULT_ON_AC(@"fileTransferResult", nil, nil);
 *
 *    //隐藏GT悬浮框
 *    GT_AC_HIDE;
 * }
 * @endcode
 */
#define GT_AC_HIDE func_hideGTAC()
extern void func_hideGTAC();

/**
 * @brief   关闭GT详细展示页面
 * @details 关闭GT详细展示页面
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 * GT_DETAIL_CLOSE;
 * @endcode
 */
#define GT_DETAIL_CLOSE func_closeGTDetail()
extern void func_closeGTDetail();

/**
 * @brief   设置GT悬浮框header的高度，范围是20-40
 * @details 在被测应用启动后，GT初始化时调用该接口，设置GT悬浮框header的高度
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 * - (void)applicationDidFinishLaunching:(UIApplication *)application
 * {
 *    //被测应用启动相关代码
 *    //code...
 *
 *    //设置GT悬浮框header的高度为40
 *    GT_AC_HEADER_HEIGHT_SET(40);
 * }
 * @endcode
 */
#define GT_AC_HEADER_HEIGHT_SET(height) func_setGTACHeaderHeight(height);
extern void func_setGTACHeaderHeight(float height);


/**
 * @brief   NSLog日志是否在GT里显示
 * @details 在被测应用启动后，GT初始化时调用该接口
 * @ingroup GT启动使用说明
 *
 * @return
 *
 * Example Usage:
 * @code
 * - (void)applicationDidFinishLaunching:(UIApplication *)application
 * {
 *    //被测应用启动相关代码
 *    //code...
 *
 *    //NSLog日志重定向打开，默认是false，关闭
 *    GT_NSLOG_SWITCH_SET(true);
 * }
 * @endcode
 */
#define GT_NSLOG_SWITCH_SET(on) func_setNsLogSwitch(on);
extern void func_setNsLogSwitch(bool on);
//------------------------ FOR C Language END ------------------------


#endif

