.class public Lcn/baos/watch/sdk/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final BP_COLUMN_HIGH:Ljava/lang/String; = "high"

.field public static final BP_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final BP_COLUMN_LOW:Ljava/lang/String; = "low"

.field public static final BP_COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final BP_TABLE_NAME:Ljava/lang/String; = "bpDateBase"

.field public static final BSUGAR_TABLE_NAME:Ljava/lang/String; = "bsDateBase"

.field public static final BS_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final BS_COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final BS_COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final CLOCK_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final CLOCK_COLUMN_IS_CHECKED:Ljava/lang/String; = "isChecked"

.field private static final CLOCK_COLUMN_IS_SYNCHRONIZE_NETWORK:Ljava/lang/String; = "isSynchronizeNetwork"

.field private static final CLOCK_COLUMN_POSITION:Ljava/lang/String; = "position"

.field private static final CLOCK_COLUMN_TIME:Ljava/lang/String; = "time"

.field private static final CLOCK_COLUMN_TIME_SLOT:Ljava/lang/String; = "timeSlot"

.field private static final CLOCK_COLUMN_TIME_WHEN:Ljava/lang/String; = "timeWhen"

.field private static final CLOCK_TABLE_NAME:Ljava/lang/String; = "clockDateBase"

.field public static final COLUME_MAC:Ljava/lang/String; = "mac"

.field public static final CONTACTS_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CONTACTS_COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final CONTACTS_COLUMN_NOTE:Ljava/lang/String; = "note"

.field public static final CONTACTS_COLUMN_TEL:Ljava/lang/String; = "tel"

.field public static final CONTACTS_COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final CONTACTS_TABLE_NAME:Ljava/lang/String; = "contactsDateBase"

.field public static final CREATE_TABLE_BP:Ljava/lang/String; = "CREATE TABLE bpDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,high INTEGER,low INTEGER,mac TEXT);"

.field public static final CREATE_TABLE_BS:Ljava/lang/String; = "CREATE TABLE bsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,value INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_CLOCK:Ljava/lang/String; = "CREATE TABLE clockDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time TEXT,timeSlot TEXT,timeWhen TEXT,isChecked TEXT,isSynchronizeNetwork TEXT,position TEXT,mac TEXT);"

.field public static final CREATE_TABLE_CONTACTS:Ljava/lang/String; = "CREATE TABLE contactsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time TEXT,name TEXT,note TEXT,tel TEXT);"

.field private static final CREATE_TABLE_DAILY_ACTIVE:Ljava/lang/String; = "CREATE TABLE DailyActiveDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sum_distance_m INTEGER,sum_step INTEGER,sum_calorie INTEGER,sum_times INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_DAILY_ACTIVE_PHONE:Ljava/lang/String; = "CREATE TABLE DailyActiveDatePhoneBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sum_distance_m INTEGER,sum_step INTEGER,sum_calorie INTEGER,sum_times INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_DAILY_HRATE:Ljava/lang/String; = "CREATE TABLE DailyHrateDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,heartrate INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_DAILY_RHR:Ljava/lang/String; = "CREATE TABLE DailyRhrDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,rhr INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_DAILY_SPO:Ljava/lang/String; = "CREATE TABLE DailySpoDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,spo INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_GPS_LOCATION:Ljava/lang/String; = "CREATE TABLE GpsLocationDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeStamp INTEGER,lat TEXT,lon TEXT,source TEXT,mac TEXT);"

.field public static final CREATE_TABLE_METO:Ljava/lang/String; = "CREATE TABLE metoDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,sum_met INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_NOTIFICATION:Ljava/lang/String; = "CREATE TABLE notificationDateBases (_id INTEGER PRIMARY KEY AUTOINCREMENT,appPackageName TEXT,appName TEXT,isChecked TEXT,isSynchronizeNetwork TEXT,position TEXT,mac TEXT);"

.field public static final CREATE_TABLE_RH:Ljava/lang/String; = "CREATE TABLE rhDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,stress INTEGER,breathing_rate INTEGER,reserve1 INTEGER,reserve2 INTEGER,reserve3 INTEGER,reserve4 INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SLEEP_STATS:Ljava/lang/String; = "CREATE TABLE SleepStatsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,begin_timestamp INTEGER,end_timestamp INTEGER,total_sec INTEGER,light_sec INTEGER,deep_sec INTEGER,wakeup_sec INTEGER,eyesmove_sec INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SLEEP_STATUS:Ljava/lang/String; = "CREATE TABLE SleepStatusDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sleep_status INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SPORT_CALORIE:Ljava/lang/String; = "CREATE TABLE sportCalorieDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,calorieEachHour INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SPORT_HRATE:Ljava/lang/String; = "CREATE TABLE SportHrateDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,heartrate INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SPORT_MODE:Ljava/lang/String; = "CREATE TABLE SportModeDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,longitude INTEGER,latitude INTEGER,avg_hrate INTEGER,max_hrate INTEGER,min_hrate INTEGER,cur_hrate INTEGER,avg_step_len_cm INTEGER,max_step_len_cm INTEGER,min_step_len_cm INTEGER,cur_step_len_cm INTEGER,avg_frequency_cpm INTEGER,max_frequency_cpm INTEGER,min_frequency_cpm INTEGER,cur_frequency_cpm INTEGER,avg_pace_s INTEGER,max_pace_s INTEGER,min_pace_s INTEGER,cur_pace_s INTEGER,sum_distance_m INTEGER,sum_action_count INTEGER,sum_calories INTEGER,sum_times_s INTEGER,mode INTEGER,status INTEGER,source INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SPORT_RECORD:Ljava/lang/String; = "CREATE TABLE sportRecordDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,sportType INTEGER,distance INTEGER,stepNumber INTEGER,calories TEXT,curCalorie INTEGER,heartRates TEXT,duration INTEGER,avgFrequency INTEGER,maxFrequency INTEGER,avgPace INTEGER,maxPace INTEGER,avgSpeed INTEGER,maxSpeed INTEGER,locationPoints TEXT,mac TEXT);"

.field private static final CREATE_TABLE_SPORT_RECORD_FROM_WATCH:Ljava/lang/String; = "CREATE TABLE SportRecordFromWatchDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,begin_timestamp INTEGER,end_timestamp INTEGER,timezone INTEGER,initiator INTEGER,mode INTEGER,status INTEGER,distance_m INTEGER,calories INTEGER,times_s INTEGER,distance_per_m INTEGER,times_per_s INTEGER,max_pace_s INTEGER,min_pace_s INTEGER,max_heartrate INTEGER,mac TEXT);"

.field private static final CREATE_TABLE_SPORT_STEP_NUMBER:Ljava/lang/String; = "CREATE TABLE sportStepsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,stepEachHour INTEGER,mac TEXT);"

.field public static final CREATE_TABLE_TEMP:Ljava/lang/String; = "CREATE TABLE tempDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,value INTEGER,mac TEXT);"

.field private static final DAILY_ACTIVE_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DAILY_ACTIVE_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final DAILY_ACTIVE_COLUMN_sum_calorie:Ljava/lang/String; = "sum_calorie"

.field private static final DAILY_ACTIVE_COLUMN_sum_distance_m:Ljava/lang/String; = "sum_distance_m"

.field private static final DAILY_ACTIVE_COLUMN_sum_step:Ljava/lang/String; = "sum_step"

.field private static final DAILY_ACTIVE_COLUMN_sum_times:Ljava/lang/String; = "sum_times"

.field private static final DAILY_ACTIVE_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final DAILY_ACTIVE_TABLE_NAME:Ljava/lang/String; = "DailyActiveDateBase"

.field private static final DAILY_ACTIVE_TABLE_Phone_NAME:Ljava/lang/String; = "DailyActiveDatePhoneBase"

.field private static final DAILY_ACTIVE_USER_ID:Ljava/lang/String; = "userId"

.field private static final DAILY_DAILY_COLUMN_rhr:Ljava/lang/String; = "rhr"

.field private static final DAILY_DAILY_COLUMN_spo:Ljava/lang/String; = "spo"

.field private static final DAILY_HRATE_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DAILY_HRATE_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final DAILY_HRATE_COLUMN_heartrate:Ljava/lang/String; = "heartrate"

.field private static final DAILY_HRATE_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final DAILY_HRATE_TABLE_NAME:Ljava/lang/String; = "DailyHrateDateBase"

.field private static final DAILY_HRATE_USER_ID:Ljava/lang/String; = "userId"

.field private static final DAILY_RHR_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DAILY_RHR_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final DAILY_RHR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final DAILY_RHR_TABLE_NAME:Ljava/lang/String; = "DailyRhrDateBase"

.field private static final DAILY_RHR_USER_ID:Ljava/lang/String; = "userId"

.field private static final DAILY_SPO_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DAILY_SPO_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final DAILY_SPO_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final DAILY_SPO_TABLE_NAME:Ljava/lang/String; = "DailySpoDateBase"

.field private static final DAILY_SPO_USER_ID:Ljava/lang/String; = "userId"

.field public static final DATABASE_NAME:Ljava/lang/String; = "localDateBase.db"

.field private static final GPS_LOCATION_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final GPS_LOCATION_LAT:Ljava/lang/String; = "lat"

.field private static final GPS_LOCATION_LON:Ljava/lang/String; = "lon"

.field private static final GPS_LOCATION_SOURCE:Ljava/lang/String; = "source"

.field private static final GPS_LOCATION_TABLE_NAME:Ljava/lang/String; = "GpsLocationDateBase"

.field private static final GPS_LOCATION_TIME:Ljava/lang/String; = "timeStamp"

.field public static final METO_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final METO_COLUMN_MET:Ljava/lang/String; = "sum_met"

.field public static final METO_COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final METO_TABLE_NAME:Ljava/lang/String; = "metoDateBase"

.field private static final NOTIFICATION_COLUMN_APP_NAME:Ljava/lang/String; = "appName"

.field private static final NOTIFICATION_COLUMN_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final NOTIFICATION_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final NOTIFICATION_COLUMN_IS_CHECKED:Ljava/lang/String; = "isChecked"

.field private static final NOTIFICATION_COLUMN_IS_SYNCHRONIZE_NETWORK:Ljava/lang/String; = "isSynchronizeNetwork"

.field private static final NOTIFICATION_COLUMN_POSITION:Ljava/lang/String; = "position"

.field private static final NOTIFICATION_TABLE_NAME:Ljava/lang/String; = "notificationDateBases"

.field public static final RH_COLUMN_BREATHING_RATE:Ljava/lang/String; = "breathing_rate"

.field public static final RH_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final RH_COLUMN_R1:Ljava/lang/String; = "reserve1"

.field public static final RH_COLUMN_R2:Ljava/lang/String; = "reserve2"

.field public static final RH_COLUMN_R3:Ljava/lang/String; = "reserve3"

.field public static final RH_COLUMN_R4:Ljava/lang/String; = "reserve4"

.field public static final RH_COLUMN_STRESS:Ljava/lang/String; = "stress"

.field public static final RH_COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final RH_TABLE_NAME:Ljava/lang/String; = "rhDateBase"

.field private static final SLEEP_STATS_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SLEEP_STATS_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SLEEP_STATS_COLUMN_begin_timestamp:Ljava/lang/String; = "begin_timestamp"

.field private static final SLEEP_STATS_COLUMN_deep_sec:Ljava/lang/String; = "deep_sec"

.field private static final SLEEP_STATS_COLUMN_end_timestamp:Ljava/lang/String; = "end_timestamp"

.field private static final SLEEP_STATS_COLUMN_eyesmove_sec:Ljava/lang/String; = "eyesmove_sec"

.field private static final SLEEP_STATS_COLUMN_light_sec:Ljava/lang/String; = "light_sec"

.field private static final SLEEP_STATS_COLUMN_total_sec:Ljava/lang/String; = "total_sec"

.field private static final SLEEP_STATS_COLUMN_wakeup_sec:Ljava/lang/String; = "wakeup_sec"

.field private static final SLEEP_STATS_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SLEEP_STATS_TABLE_NAME:Ljava/lang/String; = "SleepStatsDateBase"

.field private static final SLEEP_STATS_USER_ID:Ljava/lang/String; = "userId"

.field private static final SLEEP_STATUS_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SLEEP_STATUS_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SLEEP_STATUS_COLUMN_sleep_status:Ljava/lang/String; = "sleep_status"

.field private static final SLEEP_STATUS_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SLEEP_STATUS_TABLE_NAME:Ljava/lang/String; = "SleepStatusDateBase"

.field private static final SLEEP_STATUS_USER_ID:Ljava/lang/String; = "userId"

.field private static final SPORT_CALORIE_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SPORT_CALORIE_COLUMN_SEQ_ID:Ljava/lang/String; = "seqId"

.field private static final SPORT_CALORIE_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SPORT_CALORIE_COLUMN_VALUE_EACH_HOUR:Ljava/lang/String; = "calorieEachHour"

.field private static final SPORT_CALORIE_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SPORT_CALORIE_TABLE_NAME:Ljava/lang/String; = "sportCalorieDateBase"

.field private static final SPORT_CALORIE_USER_ID:Ljava/lang/String; = "userId"

.field private static final SPORT_HRATE_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SPORT_HRATE_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SPORT_HRATE_COLUMN_heartrate:Ljava/lang/String; = "heartrate"

.field private static final SPORT_HRATE_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SPORT_HRATE_TABLE_NAME:Ljava/lang/String; = "SportHrateDateBase"

.field private static final SPORT_HRATE_USER_ID:Ljava/lang/String; = "userId"

.field private static final SPORT_MODE_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SPORT_MODE_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SPORT_MODE_COLUMN_avg_frequency_cpm:Ljava/lang/String; = "avg_frequency_cpm"

.field private static final SPORT_MODE_COLUMN_avg_hrate:Ljava/lang/String; = "avg_hrate"

.field private static final SPORT_MODE_COLUMN_avg_pace_s:Ljava/lang/String; = "avg_pace_s"

.field private static final SPORT_MODE_COLUMN_avg_step_len_cm:Ljava/lang/String; = "avg_step_len_cm"

.field private static final SPORT_MODE_COLUMN_cur_frequency_cpm:Ljava/lang/String; = "cur_frequency_cpm"

.field private static final SPORT_MODE_COLUMN_cur_hrate:Ljava/lang/String; = "cur_hrate"

.field private static final SPORT_MODE_COLUMN_cur_pace_s:Ljava/lang/String; = "cur_pace_s"

.field private static final SPORT_MODE_COLUMN_cur_step_len_cm:Ljava/lang/String; = "cur_step_len_cm"

.field private static final SPORT_MODE_COLUMN_latitude:Ljava/lang/String; = "latitude"

.field private static final SPORT_MODE_COLUMN_longitude:Ljava/lang/String; = "longitude"

.field private static final SPORT_MODE_COLUMN_max_frequency_cpm:Ljava/lang/String; = "max_frequency_cpm"

.field private static final SPORT_MODE_COLUMN_max_hrate:Ljava/lang/String; = "max_hrate"

.field private static final SPORT_MODE_COLUMN_max_pace_s:Ljava/lang/String; = "max_pace_s"

.field private static final SPORT_MODE_COLUMN_max_step_len_cm:Ljava/lang/String; = "max_step_len_cm"

.field private static final SPORT_MODE_COLUMN_min_frequency_cpm:Ljava/lang/String; = "min_frequency_cpm"

.field private static final SPORT_MODE_COLUMN_min_hrate:Ljava/lang/String; = "min_hrate"

.field private static final SPORT_MODE_COLUMN_min_pace_s:Ljava/lang/String; = "min_pace_s"

.field private static final SPORT_MODE_COLUMN_min_step_len_cm:Ljava/lang/String; = "min_step_len_cm"

.field private static final SPORT_MODE_COLUMN_mode:Ljava/lang/String; = "mode"

.field private static final SPORT_MODE_COLUMN_source:Ljava/lang/String; = "source"

.field private static final SPORT_MODE_COLUMN_status:Ljava/lang/String; = "status"

.field private static final SPORT_MODE_COLUMN_sum_action_count:Ljava/lang/String; = "sum_action_count"

.field private static final SPORT_MODE_COLUMN_sum_calories:Ljava/lang/String; = "sum_calories"

.field private static final SPORT_MODE_COLUMN_sum_distance_m:Ljava/lang/String; = "sum_distance_m"

.field private static final SPORT_MODE_COLUMN_sum_times_s:Ljava/lang/String; = "sum_times_s"

.field private static final SPORT_MODE_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SPORT_MODE_TABLE_NAME:Ljava/lang/String; = "SportModeDateBase"

.field private static final SPORT_MODE_USER_ID:Ljava/lang/String; = "userId"

.field private static final SPORT_RECORD_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SPORT_RECORD_COLUMN_SEQ_ID:Ljava/lang/String; = "seqId"

.field private static final SPORT_RECORD_COLUMN_SPORT_AVG_FREQUENCY:Ljava/lang/String; = "avgFrequency"

.field private static final SPORT_RECORD_COLUMN_SPORT_AVG_PACE:Ljava/lang/String; = "avgPace"

.field private static final SPORT_RECORD_COLUMN_SPORT_AVG_SPEED:Ljava/lang/String; = "avgSpeed"

.field private static final SPORT_RECORD_COLUMN_SPORT_CALORIES:Ljava/lang/String; = "calories"

.field private static final SPORT_RECORD_COLUMN_SPORT_CUR_CALORIES:Ljava/lang/String; = "curCalorie"

.field private static final SPORT_RECORD_COLUMN_SPORT_DISTANCE:Ljava/lang/String; = "distance"

.field private static final SPORT_RECORD_COLUMN_SPORT_DURATION:Ljava/lang/String; = "duration"

.field private static final SPORT_RECORD_COLUMN_SPORT_HEART_RATES:Ljava/lang/String; = "heartRates"

.field private static final SPORT_RECORD_COLUMN_SPORT_LOCATION_POINTS:Ljava/lang/String; = "locationPoints"

.field private static final SPORT_RECORD_COLUMN_SPORT_MAX_FREQUENCY:Ljava/lang/String; = "maxFrequency"

.field private static final SPORT_RECORD_COLUMN_SPORT_MAX_PACE:Ljava/lang/String; = "maxPace"

.field private static final SPORT_RECORD_COLUMN_SPORT_MAX_SPEED:Ljava/lang/String; = "maxSpeed"

.field private static final SPORT_RECORD_COLUMN_SPORT_STEP_NUMBER:Ljava/lang/String; = "stepNumber"

.field private static final SPORT_RECORD_COLUMN_SPORT_TYPE:Ljava/lang/String; = "sportType"

.field private static final SPORT_RECORD_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SPORT_RECORD_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_BEGIN_TIMESTAMP:Ljava/lang/String; = "begin_timestamp"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_END_TIMESTAMP:Ljava/lang/String; = "end_timestamp"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_INITIATOR:Ljava/lang/String; = "initiator"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_MODE:Ljava/lang/String; = "mode"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_CALORIES:Ljava/lang/String; = "calories"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_DISTANCE_M:Ljava/lang/String; = "distance_m"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_DISTANCE_PER_M:Ljava/lang/String; = "distance_per_m"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_MAX_HEARTRATE:Ljava/lang/String; = "max_heartrate"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_MAX_PACE_S:Ljava/lang/String; = "max_pace_s"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_MIN_PACE_S:Ljava/lang/String; = "min_pace_s"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_TIMES_PER_S:Ljava/lang/String; = "times_per_s"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_SPORT_TIMES_S:Ljava/lang/String; = "times_s"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_STATUS:Ljava/lang/String; = "status"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SPORT_RECORD_FROM_WATCH_COLUMN_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static final SPORT_RECORD_FROM_WATCH_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SPORT_RECORD_FROM_WATCH_TABLE_NAME:Ljava/lang/String; = "SportRecordFromWatchDateBase"

.field private static final SPORT_RECORD_FROM_WATCH_USER_ID:Ljava/lang/String; = "userId"

.field private static final SPORT_RECORD_TABLE_NAME:Ljava/lang/String; = "sportRecordDateBase"

.field private static final SPORT_RECORD_USER_ID:Ljava/lang/String; = "userId"

.field private static final SPORT_STEP_NUMBER_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final SPORT_STEP_NUMBER_COLUMN_SEQ_ID:Ljava/lang/String; = "seqId"

.field private static final SPORT_STEP_NUMBER_COLUMN_STEP_NUMBER_EACH_HOUR:Ljava/lang/String; = "stepEachHour"

.field private static final SPORT_STEP_NUMBER_COLUMN_TIME:Ljava/lang/String; = "timeStamp"

.field private static final SPORT_STEP_NUMBER_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final SPORT_STEP_NUMBER_TABLE_NAME:Ljava/lang/String; = "sportStepsDateBase"

.field private static final SPORT_STEP_NUMBER_USER_ID:Ljava/lang/String; = "userId"

.field public static final TEMP_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final TEMP_COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final TEMP_COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final TEMP_TABLE_NAME:Ljava/lang/String; = "tempDateBase"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x10

    const-string v2, "localDateBase.db"

    .line 626
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getClockColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getClockColumnIsChecked()Ljava/lang/String;
    .locals 1

    const-string v0, "isChecked"

    return-object v0
.end method

.method public static getClockColumnIsSynchronizeNetwork()Ljava/lang/String;
    .locals 1

    const-string v0, "isSynchronizeNetwork"

    return-object v0
.end method

.method public static getClockColumnPosition()Ljava/lang/String;
    .locals 1

    const-string v0, "position"

    return-object v0
.end method

.method public static getClockColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "time"

    return-object v0
.end method

.method public static getClockColumnTimeSlot()Ljava/lang/String;
    .locals 1

    const-string v0, "timeSlot"

    return-object v0
.end method

.method public static getClockColumnTimeWhen()Ljava/lang/String;
    .locals 1

    const-string v0, "timeWhen"

    return-object v0
.end method

.method public static getClockTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "clockDateBase"

    return-object v0
.end method

.method public static getContactsName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method

.method public static getContactsNote()Ljava/lang/String;
    .locals 1

    const-string v0, "note"

    return-object v0
.end method

.method public static getContactsTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "contactsDateBase"

    return-object v0
.end method

.method public static getContactsTel()Ljava/lang/String;
    .locals 1

    const-string v0, "tel"

    return-object v0
.end method

.method public static getContactsTime()Ljava/lang/String;
    .locals 1

    const-string v0, "time"

    return-object v0
.end method

.method public static getDAILY_ACTIVE_COLUMN_sum_calorie()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_calorie"

    return-object v0
.end method

.method public static getDAILY_ACTIVE_COLUMN_sum_distance_m()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_distance_m"

    return-object v0
.end method

.method public static getDAILY_ACTIVE_COLUMN_sum_step()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_step"

    return-object v0
.end method

.method public static getDAILY_ACTIVE_COLUMN_sum_times()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_times"

    return-object v0
.end method

.method public static getDAILY_DAILY_COLUMN_rhr()Ljava/lang/String;
    .locals 1

    const-string v0, "rhr"

    return-object v0
.end method

.method public static getDAILY_DAILY_COLUMN_spo()Ljava/lang/String;
    .locals 1

    const-string v0, "spo"

    return-object v0
.end method

.method public static getDAILY_HRATE_COLUMN_heartrate()Ljava/lang/String;
    .locals 1

    const-string v0, "heartrate"

    return-object v0
.end method

.method public static getDailyActiveColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getDailyActiveColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getDailyActiveDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getDailyActivePhoneTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "DailyActiveDatePhoneBase"

    return-object v0
.end method

.method public static getDailyActiveTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "DailyActiveDateBase"

    return-object v0
.end method

.method public static getDailyActiveUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getDailyHrateColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getDailyHrateColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getDailyHrateDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getDailyHrateTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "DailyHrateDateBase"

    return-object v0
.end method

.method public static getDailyHrateUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getDailyRhrColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getDailyRhrColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getDailyRhrDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getDailyRhrTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "DailyRhrDateBase"

    return-object v0
.end method

.method public static getDailyRhrUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getDailySpoColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getDailySpoColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getDailySpoDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getDailySpoTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "DailySpoDateBase"

    return-object v0
.end method

.method public static getDailySpoUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getGpsLocationColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getGpsLocationLat()Ljava/lang/String;
    .locals 1

    const-string v0, "lat"

    return-object v0
.end method

.method public static getGpsLocationLon()Ljava/lang/String;
    .locals 1

    const-string v0, "lon"

    return-object v0
.end method

.method public static getGpsLocationSource()Ljava/lang/String;
    .locals 1

    const-string v0, "source"

    return-object v0
.end method

.method public static getGpsLocationTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "GpsLocationDateBase"

    return-object v0
.end method

.method public static getGpsLocationTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getNotificationColumnAppName()Ljava/lang/String;
    .locals 1

    const-string v0, "appName"

    return-object v0
.end method

.method public static getNotificationColumnAppPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "appPackageName"

    return-object v0
.end method

.method public static getNotificationColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getNotificationColumnIsChecked()Ljava/lang/String;
    .locals 1

    const-string v0, "isChecked"

    return-object v0
.end method

.method public static getNotificationColumnIsSynchronizeNetwork()Ljava/lang/String;
    .locals 1

    const-string v0, "isSynchronizeNetwork"

    return-object v0
.end method

.method public static getNotificationColumnPosition()Ljava/lang/String;
    .locals 1

    const-string v0, "position"

    return-object v0
.end method

.method public static getNotificationTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "notificationDateBases"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_begin_timestamp()Ljava/lang/String;
    .locals 1

    const-string v0, "begin_timestamp"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_deep_sec()Ljava/lang/String;
    .locals 1

    const-string v0, "deep_sec"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_end_timestamp()Ljava/lang/String;
    .locals 1

    const-string v0, "end_timestamp"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_eyesmove_sec()Ljava/lang/String;
    .locals 1

    const-string v0, "eyesmove_sec"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_light_sec()Ljava/lang/String;
    .locals 1

    const-string v0, "light_sec"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_total_sec()Ljava/lang/String;
    .locals 1

    const-string v0, "total_sec"

    return-object v0
.end method

.method public static getSLEEP_STATS_COLUMN_wakeup_sec()Ljava/lang/String;
    .locals 1

    const-string v0, "wakeup_sec"

    return-object v0
.end method

.method public static getSLEEP_STATUS_COLUMN_sleep_status()Ljava/lang/String;
    .locals 1

    const-string v0, "sleep_status"

    return-object v0
.end method

.method public static getSPORT_HRATE_COLUMN_heartrate()Ljava/lang/String;
    .locals 1

    const-string v0, "heartrate"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_avg_frequency_cpm()Ljava/lang/String;
    .locals 1

    const-string v0, "avg_frequency_cpm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_avg_hrate()Ljava/lang/String;
    .locals 1

    const-string v0, "avg_hrate"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_avg_pace_s()Ljava/lang/String;
    .locals 1

    const-string v0, "avg_pace_s"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_avg_step_len_cm()Ljava/lang/String;
    .locals 1

    const-string v0, "avg_step_len_cm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_cur_frequency_cpm()Ljava/lang/String;
    .locals 1

    const-string v0, "cur_frequency_cpm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_cur_hrate()Ljava/lang/String;
    .locals 1

    const-string v0, "cur_hrate"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_cur_pace_s()Ljava/lang/String;
    .locals 1

    const-string v0, "cur_pace_s"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_cur_step_len_cm()Ljava/lang/String;
    .locals 1

    const-string v0, "cur_step_len_cm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_latitude()Ljava/lang/String;
    .locals 1

    const-string v0, "latitude"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_longitude()Ljava/lang/String;
    .locals 1

    const-string v0, "longitude"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_max_frequency_cpm()Ljava/lang/String;
    .locals 1

    const-string v0, "max_frequency_cpm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_max_hrate()Ljava/lang/String;
    .locals 1

    const-string v0, "max_hrate"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_max_pace_s()Ljava/lang/String;
    .locals 1

    const-string v0, "max_pace_s"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_max_step_len_cm()Ljava/lang/String;
    .locals 1

    const-string v0, "max_step_len_cm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_min_frequency_cpm()Ljava/lang/String;
    .locals 1

    const-string v0, "min_frequency_cpm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_min_hrate()Ljava/lang/String;
    .locals 1

    const-string v0, "min_hrate"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_min_pace_s()Ljava/lang/String;
    .locals 1

    const-string v0, "min_pace_s"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_min_step_len_cm()Ljava/lang/String;
    .locals 1

    const-string v0, "min_step_len_cm"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_mode()Ljava/lang/String;
    .locals 1

    const-string v0, "mode"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_source()Ljava/lang/String;
    .locals 1

    const-string v0, "source"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_status()Ljava/lang/String;
    .locals 1

    const-string v0, "status"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_sum_action_count()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_action_count"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_sum_calories()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_calories"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_sum_distance_m()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_distance_m"

    return-object v0
.end method

.method public static getSPORT_MODE_COLUMN_sum_times_s()Ljava/lang/String;
    .locals 1

    const-string v0, "sum_times_s"

    return-object v0
.end method

.method public static getSleepStatsColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getSleepStatsColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSleepStatsDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSleepStatsTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "SleepStatsDateBase"

    return-object v0
.end method

.method public static getSleepStatsUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSleepStatusColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getSleepStatusColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSleepStatusDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSleepStatusTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "SleepStatusDateBase"

    return-object v0
.end method

.method public static getSleepStatusUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSportCalorieColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getSportCalorieColumnSeqId()Ljava/lang/String;
    .locals 1

    const-string v0, "seqId"

    return-object v0
.end method

.method public static getSportCalorieColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSportCalorieColumnValueEachHour()Ljava/lang/String;
    .locals 1

    const-string v0, "calorieEachHour"

    return-object v0
.end method

.method public static getSportCalorieDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSportCalorieTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "sportCalorieDateBase"

    return-object v0
.end method

.method public static getSportCalorieUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSportHrateColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getSportHrateColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSportHrateDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSportHrateTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "SportHrateDateBase"

    return-object v0
.end method

.method public static getSportHrateUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSportModeColumnId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public static getSportModeColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSportModeDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSportModeTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "SportModeDateBase"

    return-object v0
.end method

.method public static getSportModeUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSportRecordColumnSeqId()Ljava/lang/String;
    .locals 1

    const-string v0, "seqId"

    return-object v0
.end method

.method public static getSportRecordColumnSportAvgFrequency()Ljava/lang/String;
    .locals 1

    const-string v0, "avgFrequency"

    return-object v0
.end method

.method public static getSportRecordColumnSportAvgPace()Ljava/lang/String;
    .locals 1

    const-string v0, "avgPace"

    return-object v0
.end method

.method public static getSportRecordColumnSportAvgSpeed()Ljava/lang/String;
    .locals 1

    const-string v0, "avgSpeed"

    return-object v0
.end method

.method public static getSportRecordColumnSportCalories()Ljava/lang/String;
    .locals 1

    const-string v0, "calories"

    return-object v0
.end method

.method public static getSportRecordColumnSportCurCalories()Ljava/lang/String;
    .locals 1

    const-string v0, "curCalorie"

    return-object v0
.end method

.method public static getSportRecordColumnSportDistance()Ljava/lang/String;
    .locals 1

    const-string v0, "distance"

    return-object v0
.end method

.method public static getSportRecordColumnSportDuration()Ljava/lang/String;
    .locals 1

    const-string v0, "duration"

    return-object v0
.end method

.method public static getSportRecordColumnSportHeartRates()Ljava/lang/String;
    .locals 1

    const-string v0, "heartRates"

    return-object v0
.end method

.method public static getSportRecordColumnSportLocationPoints()Ljava/lang/String;
    .locals 1

    const-string v0, "locationPoints"

    return-object v0
.end method

.method public static getSportRecordColumnSportMaxFrequency()Ljava/lang/String;
    .locals 1

    const-string v0, "maxFrequency"

    return-object v0
.end method

.method public static getSportRecordColumnSportMaxPace()Ljava/lang/String;
    .locals 1

    const-string v0, "maxPace"

    return-object v0
.end method

.method public static getSportRecordColumnSportMaxSpeed()Ljava/lang/String;
    .locals 1

    const-string v0, "maxSpeed"

    return-object v0
.end method

.method public static getSportRecordColumnSportStepNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "stepNumber"

    return-object v0
.end method

.method public static getSportRecordColumnSportType()Ljava/lang/String;
    .locals 1

    const-string v0, "sportType"

    return-object v0
.end method

.method public static getSportRecordColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSportRecordDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnBeginTimestamp()Ljava/lang/String;
    .locals 1

    const-string v0, "begin_timestamp"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnEndTimestamp()Ljava/lang/String;
    .locals 1

    const-string v0, "end_timestamp"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnInitiator()Ljava/lang/String;
    .locals 1

    const-string v0, "initiator"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnMode()Ljava/lang/String;
    .locals 1

    const-string v0, "mode"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportCalories()Ljava/lang/String;
    .locals 1

    const-string v0, "calories"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportDistanceM()Ljava/lang/String;
    .locals 1

    const-string v0, "distance_m"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportDistancePerM()Ljava/lang/String;
    .locals 1

    const-string v0, "distance_per_m"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportMaxHeartrate()Ljava/lang/String;
    .locals 1

    const-string v0, "max_heartrate"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportMaxPaceS()Ljava/lang/String;
    .locals 1

    const-string v0, "max_pace_s"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportMinPaceS()Ljava/lang/String;
    .locals 1

    const-string v0, "min_pace_s"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportTimesPerS()Ljava/lang/String;
    .locals 1

    const-string v0, "times_per_s"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnSportTimesS()Ljava/lang/String;
    .locals 1

    const-string v0, "times_s"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnStatus()Ljava/lang/String;
    .locals 1

    const-string v0, "status"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSportRecordFromWatchColumnTimezone()Ljava/lang/String;
    .locals 1

    const-string v0, "timezone"

    return-object v0
.end method

.method public static getSportRecordFromWatchDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSportRecordFromWatchTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "SportRecordFromWatchDateBase"

    return-object v0
.end method

.method public static getSportRecordFromWatchUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSportRecordTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "sportRecordDateBase"

    return-object v0
.end method

.method public static getSportRecordUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method

.method public static getSportStepNumberColumnSeqId()Ljava/lang/String;
    .locals 1

    const-string v0, "seqId"

    return-object v0
.end method

.method public static getSportStepNumberColumnStepNumberEachHour()Ljava/lang/String;
    .locals 1

    const-string v0, "stepEachHour"

    return-object v0
.end method

.method public static getSportStepNumberColumnTime()Ljava/lang/String;
    .locals 1

    const-string v0, "timeStamp"

    return-object v0
.end method

.method public static getSportStepNumberDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method public static getSportStepNumberTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "sportStepsDateBase"

    return-object v0
.end method

.method public static getSportStepNumberUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "userId"

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE clockDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time TEXT,timeSlot TEXT,timeWhen TEXT,isChecked TEXT,isSynchronizeNetwork TEXT,position TEXT,mac TEXT);"

    .line 632
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->clock table onCreate be called:CREATE TABLE clockDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time TEXT,timeSlot TEXT,timeWhen TEXT,isChecked TEXT,isSynchronizeNetwork TEXT,position TEXT,mac TEXT);"

    .line 633
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE notificationDateBases (_id INTEGER PRIMARY KEY AUTOINCREMENT,appPackageName TEXT,appName TEXT,isChecked TEXT,isSynchronizeNetwork TEXT,position TEXT,mac TEXT);"

    .line 634
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->notification table onCreate be called:CREATE TABLE notificationDateBases (_id INTEGER PRIMARY KEY AUTOINCREMENT,appPackageName TEXT,appName TEXT,isChecked TEXT,isSynchronizeNetwork TEXT,position TEXT,mac TEXT);"

    .line 635
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE sportStepsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,stepEachHour INTEGER,mac TEXT);"

    .line 636
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE sportStepsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,stepEachHour INTEGER,mac TEXT);"

    .line 637
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE sportCalorieDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,calorieEachHour INTEGER,mac TEXT);"

    .line 638
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE sportCalorieDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,calorieEachHour INTEGER,mac TEXT);"

    .line 639
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE sportRecordDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,sportType INTEGER,distance INTEGER,stepNumber INTEGER,calories TEXT,curCalorie INTEGER,heartRates TEXT,duration INTEGER,avgFrequency INTEGER,maxFrequency INTEGER,avgPace INTEGER,maxPace INTEGER,avgSpeed INTEGER,maxSpeed INTEGER,locationPoints TEXT,mac TEXT);"

    .line 640
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE sportRecordDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,seqId INTEGER,timeStamp INTEGER,sportType INTEGER,distance INTEGER,stepNumber INTEGER,calories TEXT,curCalorie INTEGER,heartRates TEXT,duration INTEGER,avgFrequency INTEGER,maxFrequency INTEGER,avgPace INTEGER,maxPace INTEGER,avgSpeed INTEGER,maxSpeed INTEGER,locationPoints TEXT,mac TEXT);"

    .line 641
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SportRecordFromWatchDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,begin_timestamp INTEGER,end_timestamp INTEGER,timezone INTEGER,initiator INTEGER,mode INTEGER,status INTEGER,distance_m INTEGER,calories INTEGER,times_s INTEGER,distance_per_m INTEGER,times_per_s INTEGER,max_pace_s INTEGER,min_pace_s INTEGER,max_heartrate INTEGER,mac TEXT);"

    .line 642
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE SportRecordFromWatchDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,begin_timestamp INTEGER,end_timestamp INTEGER,timezone INTEGER,initiator INTEGER,mode INTEGER,status INTEGER,distance_m INTEGER,calories INTEGER,times_s INTEGER,distance_per_m INTEGER,times_per_s INTEGER,max_pace_s INTEGER,min_pace_s INTEGER,max_heartrate INTEGER,mac TEXT);"

    .line 643
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SportModeDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,longitude INTEGER,latitude INTEGER,avg_hrate INTEGER,max_hrate INTEGER,min_hrate INTEGER,cur_hrate INTEGER,avg_step_len_cm INTEGER,max_step_len_cm INTEGER,min_step_len_cm INTEGER,cur_step_len_cm INTEGER,avg_frequency_cpm INTEGER,max_frequency_cpm INTEGER,min_frequency_cpm INTEGER,cur_frequency_cpm INTEGER,avg_pace_s INTEGER,max_pace_s INTEGER,min_pace_s INTEGER,cur_pace_s INTEGER,sum_distance_m INTEGER,sum_action_count INTEGER,sum_calories INTEGER,sum_times_s INTEGER,mode INTEGER,status INTEGER,source INTEGER,mac TEXT);"

    .line 644
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE SportModeDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,longitude INTEGER,latitude INTEGER,avg_hrate INTEGER,max_hrate INTEGER,min_hrate INTEGER,cur_hrate INTEGER,avg_step_len_cm INTEGER,max_step_len_cm INTEGER,min_step_len_cm INTEGER,cur_step_len_cm INTEGER,avg_frequency_cpm INTEGER,max_frequency_cpm INTEGER,min_frequency_cpm INTEGER,cur_frequency_cpm INTEGER,avg_pace_s INTEGER,max_pace_s INTEGER,min_pace_s INTEGER,cur_pace_s INTEGER,sum_distance_m INTEGER,sum_action_count INTEGER,sum_calories INTEGER,sum_times_s INTEGER,mode INTEGER,status INTEGER,source INTEGER,mac TEXT);"

    .line 645
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SportHrateDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,heartrate INTEGER,mac TEXT);"

    .line 646
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE SportHrateDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,heartrate INTEGER,mac TEXT);"

    .line 647
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SleepStatsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,begin_timestamp INTEGER,end_timestamp INTEGER,total_sec INTEGER,light_sec INTEGER,deep_sec INTEGER,wakeup_sec INTEGER,eyesmove_sec INTEGER,mac TEXT);"

    .line 648
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE SleepStatsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,begin_timestamp INTEGER,end_timestamp INTEGER,total_sec INTEGER,light_sec INTEGER,deep_sec INTEGER,wakeup_sec INTEGER,eyesmove_sec INTEGER,mac TEXT);"

    .line 649
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SleepStatusDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sleep_status INTEGER,mac TEXT);"

    .line 650
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE SleepStatusDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sleep_status INTEGER,mac TEXT);"

    .line 651
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DailyActiveDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sum_distance_m INTEGER,sum_step INTEGER,sum_calorie INTEGER,sum_times INTEGER,mac TEXT);"

    .line 652
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE DailyActiveDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sum_distance_m INTEGER,sum_step INTEGER,sum_calorie INTEGER,sum_times INTEGER,mac TEXT);"

    .line 653
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DailyActiveDatePhoneBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sum_distance_m INTEGER,sum_step INTEGER,sum_calorie INTEGER,sum_times INTEGER,mac TEXT);"

    .line 655
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE DailyActiveDatePhoneBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,sum_distance_m INTEGER,sum_step INTEGER,sum_calorie INTEGER,sum_times INTEGER,mac TEXT);"

    .line 656
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DailyHrateDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,heartrate INTEGER,mac TEXT);"

    .line 658
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE DailyHrateDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,heartrate INTEGER,mac TEXT);"

    .line 659
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DailySpoDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,spo INTEGER,mac TEXT);"

    .line 660
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE DailySpoDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,spo INTEGER,mac TEXT);"

    .line 661
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DailyRhrDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,rhr INTEGER,mac TEXT);"

    .line 662
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE DailyRhrDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,userId INTEGER,deviceId TEXT,timeStamp INTEGER,rhr INTEGER,mac TEXT);"

    .line 663
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE GpsLocationDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeStamp INTEGER,lat TEXT,lon TEXT,source TEXT,mac TEXT);"

    .line 664
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE GpsLocationDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeStamp INTEGER,lat TEXT,lon TEXT,source TEXT,mac TEXT);"

    .line 665
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE metoDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,sum_met INTEGER,mac TEXT);"

    .line 667
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE metoDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,sum_met INTEGER,mac TEXT);"

    .line 668
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE rhDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,stress INTEGER,breathing_rate INTEGER,reserve1 INTEGER,reserve2 INTEGER,reserve3 INTEGER,reserve4 INTEGER,mac TEXT);"

    .line 669
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE rhDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,stress INTEGER,breathing_rate INTEGER,reserve1 INTEGER,reserve2 INTEGER,reserve3 INTEGER,reserve4 INTEGER,mac TEXT);"

    .line 670
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE bpDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,high INTEGER,low INTEGER,mac TEXT);"

    .line 671
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE bpDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,high INTEGER,low INTEGER,mac TEXT);"

    .line 672
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE tempDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,value INTEGER,mac TEXT);"

    .line 673
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE tempDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,value INTEGER,mac TEXT);"

    .line 674
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE bsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,value INTEGER,mac TEXT);"

    .line 675
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "localDb->sport step number table onCreate be called:CREATE TABLE bsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,value INTEGER,mac TEXT);"

    .line 676
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE contactsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time TEXT,name TEXT,note TEXT,tel TEXT);"

    .line 678
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "localDb->sport step number table onCreate be called:CREATE TABLE contactsDateBase (_id INTEGER PRIMARY KEY AUTOINCREMENT,time TEXT,name TEXT,note TEXT,tel TEXT);"

    .line 679
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", which will destroy all old data"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string p2, "Drop table if exists clockDateBase"

    .line 687
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists notificationDateBases"

    .line 688
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists sportStepsDateBase"

    .line 689
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists sportCalorieDateBase"

    .line 690
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists sportRecordDateBase"

    .line 691
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists SportRecordFromWatchDateBase"

    .line 692
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists SportModeDateBase"

    .line 693
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists SportHrateDateBase"

    .line 694
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists SleepStatsDateBase"

    .line 695
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists SleepStatusDateBase"

    .line 696
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists DailyActiveDateBase"

    .line 697
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists DailyHrateDateBase"

    .line 698
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists DailySpoDateBase"

    .line 699
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists DailyRhrDateBase"

    .line 700
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists GpsLocationDateBase"

    .line 701
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists metoDateBase"

    .line 703
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists rhDateBase"

    .line 704
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists bpDateBase"

    .line 705
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists tempDateBase"

    .line 706
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists bsDateBase"

    .line 707
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists DailyActiveDatePhoneBase"

    .line 709
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "Drop table if exists contactsDateBase"

    .line 711
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
