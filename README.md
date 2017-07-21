# NSDateFormat
日期类的处理在项目中是常用部分，花时间把常用到的封装了一下，一次性搞定。

具体功能如下：

/**
 *  日期相关工具宏
 */

#import "SYKFDateUitil.h"

/**
 *  获取当前日历
 */
#define SYKFDateCurrentCalendar [SYKFDateUitil sharedCalendar]

/**
 *  获取单例格式化器
 */
#define SYKFDateShareFormatter [SYKFDateUitil sharedDateFormatter]

/**
 *  相对现在日期得间隔天数
 */
#define SYKFDateDaysAgo(aDate) [SYKFDateUitil daysAgoFromNow:aDate]

/**
 *  不以午夜为基准计算天数之前
 */
#define SYKFDateDaysAgoAgainstMidNight(aDate) [SYKFDateUitil daysAgoAgainstMidnight:aDate]

/**
 *  获取一个时间与当前时间间隔详情字符串
 */
#define SYKFDateTimeAgoString(aDate) [SYKFDateUitil detailTimeAgoString:aDate]

/**
 *  获取一个时间戳与当前时间的间隔详情字符串
 */
#define SYKFDateTimeAgoStringByTimeInterval(timeInterval) [SYKFDateUitil detailTimeAgoStringByInterval:timeInterval]

/**
 *  天数间隔文本字符串
 */
#define SYKFDateStringDaysAgo(aDate) [SYKFDateUitil stringDaysAgo:aDate]

/**
 *  这个日期是星期几
 */
#define SYKFDateGetWeekDay(aDate) [SYKFDateUitil weekDay:aDate]

/**
 *  返回这个日期是星期几字符串
 */
#define  SYKFDateGetWeekDayString(aDate) [SYKFDateUitil weekDayString:aDate]

/**
 *  返回这个日期在全年中是第多少周字符串
 */
#define  SYKFDateGetWeekNumString(aDate) [SYKFDateUitil weekNumberString:aDate]

/**
 *  在全年中是第多少周
 */
#define SYKFDateGetWeekNum(aDate) [SYKFDateUitil weekNumber:aDate]

/**
 *  获取日期中得年份
 */
#define SYKFDateGetYear(aDate) [SYKFDateUitil year:aDate]

/**
 *  获取日期中得月份
 */
#define SYKFDateGetMonth(aDate) [SYKFDateUitil month:aDate]

/**
 *  获取日期中的日
 */
#define SYKFDateGetDay(aDate) [SYKFDateUitil day:aDate]

/**
 *  获取日期中得小时
 */
#define SYKFDateGetHour(aDate) [SYKFDateUitil hour:aDate]

/**
 *  获取日期中的分钟
 */
#define SYKFDateGetMinute(aDate) [SYKFDateUitil minute:aDate]

/**
 *  日期转字符串
 */
#define SYKFDateToString(aDate) [SYKFDateUitil stringFromDate:aDate]

/**
 *  字符串转日期
 */
#define SYKFDateFromString(aString) [SYKFDateUitil dateFromString:aString]

/**
 *  字符串转日期详细时间
 */
#define SYKFDateTimeFromString(aString) [SYKFDateUitil dateTimeFromString:aString]

/**
 *  将时间戳转成日期
 */
#define SYKFDateFromTimeInterval(timeInterval) [SYKFDateUitil dateFromTimeInterval:timeInterval]

/**
 *  按照某个格式将日期转成字符串
 */
#define SYKFDateToStringByFormat(aDate,format) [SYKFDateUitil stringFromDate:aDate withFormat:format]

/**
 *  按照某个格式将字符串转成日期
 */
#define SYKFDateFromStringByFormat(aString,format) [SYKFDateUitil dateFromString:aString withFormat:format]

/**
 *  这个日期所在周的起始日期
 */
#define SYKFDateBeginningOfWeek(aDate) [SYKFDateUitil beginningOfWeek:aDate]

/**
 *  这个日期的起始时间
 */
#define SYKFDateBeginningOfDay(aDate) [SYKFDateUitil beginningOfDay:aDate]

/**
 *  这个日期所在周的结束日期
 */
#define SYKFDateEndOfWeek(aDate) [SYKFDateUitil endOfWeek:aDate]

/**
 *  普通日期格式字符串
 */
#define SYKFDateFormatString [SYKFDateUitil dateFormatString]

/**
 *  普通时间格式字符串
 */
#define SYKFDateTimeFormatString [SYKFDateUitil timeFormatString]

/**
 *  时间戳格式字符串
 */
#define SYKFDateTimeStampFormatString [SYKFDateUitil timestampFormatString]

/**
 *  数据库存储格式字符串
 */
#define SYKFDateDataBaseFormatString [SYKFDateUitil dbFormatString]

/**
 *  生日转年龄
 */
#define SYKFDateBirthDayToAge(date) [SYKFDateUitil birthdayToAge:date]

/**
 *  生日转年龄
 */
#define SYKFDateBirthDayToAgeByTimeInterval(timeInterval) [SYKFDateUitil birthdayToAgeByTimeInterval:timeInterval]

/**
 *  日期转星座
 */
#define SYKFDateToConstellation(date) [SYKFDateUitil dateToConstellation:date]

/**
 *  时间戳转星座
 */
#define SYKFDateToConstellationByTimeInterval(timeInterval) [SYKFDateUitil dateToConstellationByTimeInterval:timeInterval]

/**
 *  检查一个对象是否为空
 */
#define SYKFCheckObjectNull(object) [SYKFDateUitil isNullObject: object]

/**
 *  检查一个valueObj,keyObj对象是否有一个是空的
 */
#define SYKFCheckKeyValueHasNull(keyObj,valueObj) [SYKFDateUitil checkValue:valueObj key:keyObj]

/**
 *  判断是否是今日
 */
#define SYKFBoolIfIsToday(string) [SYKFDateUitil boolIfIsToday:string]

这样调用起来非常方便了，需要了一句话就解决。


    NSString *dateString =@"2017-06-25 10:12:18";
    NSDate *getDate =SYKFDateTimeFromString(dateString);
    NSLog(@"转日期后月份是：%ld,日期与今天相差天数：%ld；",SYKFDateGetMonth(getDate),SYKFDateDaysAgo(getDate));
    
    NSDate *todayDate =[NSDate new];
    NSLog(@"今天所属星座：%@,今天是星期：%ld",SYKFDateToConstellation(todayDate),SYKFDateGetWeekDay(todayDate));
