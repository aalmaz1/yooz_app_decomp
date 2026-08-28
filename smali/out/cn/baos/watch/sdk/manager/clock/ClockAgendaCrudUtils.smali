.class public Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;
.super Ljava/lang/Object;
.source "ClockAgendaCrudUtils.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;
    .registers 2

    .line 31
    sget-object v0, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->instance:Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    if-nez v0, :cond_17

    .line 32
    const-class v0, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    monitor-enter v0

    .line 33
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->instance:Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    if-nez v1, :cond_12

    .line 34
    new-instance v1, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->instance:Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    .line 36
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 38
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->instance:Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    return-object v0
.end method


# virtual methods
.method public addReminderToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 8

    .line 121
    new-instance v0, Lcn/baos/watch/w100/messages/AddReminder;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/AddReminder;-><init>()V

    .line 122
    sget v1, Lcn/baos/watch/sdk/entitiy/Constant;->alarm_version:I

    iput v1, v0, Lcn/baos/watch/w100/messages/AddReminder;->verison:I

    .line 123
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getId()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/AddReminder;->id:I

    .line 124
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getCircleType()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getReminderManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)J

    move-result-wide v2

    .line 124
    invoke-static {v1, v2, v3}, Lcn/baos/watch/sdk/util/TimeUtils;->getCycleModel(Ljava/lang/String;J)Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleType()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddReminder;->circle_type:I

    .line 127
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleExtra()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddReminder;->circle_extra:I

    .line 128
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfWeek()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddReminder;->mask_wday:I

    .line 129
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfMouth()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddReminder;->mask_mday:I

    .line 130
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getWeekOfMouth()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddReminder;->mask_mweek:I

    .line 131
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getMouthOfYear()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/AddReminder;->mask_ymonth:I

    .line 132
    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneChange()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/AddReminder;->time_zone:I

    .line 133
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getReminderManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/AddReminder;->start_time:I

    .line 134
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getReminder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/AddReminder;->reminder:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/baos/watch/w100/messages/AddReminder;->event:Ljava/lang/String;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u65e5\u7a0b\u7ba1\u7406\u6dfb\u52a0\u63d0\u9192reminder:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setCrudReminderListener(ILcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    .line 139
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public deleteAlarmToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 8

    .line 75
    new-instance v0, Lcn/baos/watch/w100/messages/DeleteAlarm;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/DeleteAlarm;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->getId()I

    move-result p1

    iput p1, v0, Lcn/baos/watch/w100/messages/DeleteAlarm;->id:I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u673a\u95f9\u949f\u7ba1\u7406\u5220\u9664alarm:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setCrudClockListener(ILcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    .line 80
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public deleteReminderToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 8

    .line 180
    new-instance v0, Lcn/baos/watch/w100/messages/DeleteReminder;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/DeleteReminder;-><init>()V

    .line 181
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getId()I

    move-result p1

    iput p1, v0, Lcn/baos/watch/w100/messages/DeleteReminder;->id:I

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u673a\u65e5\u7a0b\u7ba1\u7406\u5220\u9664reminder:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setCrudReminderListener(ILcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    .line 185
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public setAlarmToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 9

    .line 48
    new-instance v0, Lcn/baos/watch/w100/messages/AddAlarm;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/AddAlarm;-><init>()V

    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lcn/baos/watch/w100/messages/AddAlarm;->verison:I

    .line 50
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->getTimeWhen()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getClockManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)J

    move-result-wide v3

    .line 50
    invoke-static {v2, v3, v4}, Lcn/baos/watch/sdk/util/TimeUtils;->getCycleModel(Ljava/lang/String;J)Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleType()I

    move-result v3

    iput v3, v0, Lcn/baos/watch/w100/messages/AddAlarm;->circle_type:I

    .line 53
    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleExtra()I

    move-result v3

    iput v3, v0, Lcn/baos/watch/w100/messages/AddAlarm;->circle_extra:I

    .line 54
    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfWeek()I

    move-result v3

    iput v3, v0, Lcn/baos/watch/w100/messages/AddAlarm;->mask_wday:I

    .line 55
    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfMouth()I

    move-result v3

    iput v3, v0, Lcn/baos/watch/w100/messages/AddAlarm;->mask_mday:I

    .line 56
    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getWeekOfMouth()I

    move-result v3

    iput v3, v0, Lcn/baos/watch/w100/messages/AddAlarm;->mask_mweek:I

    .line 57
    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getMouthOfYear()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddAlarm;->mask_ymonth:I

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneChange()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AddAlarm;->time_zone:I

    .line 59
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getClockManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int p1, v2

    iput p1, v0, Lcn/baos/watch/w100/messages/AddAlarm;->start_time:I

    const-string p1, "\u95f9\u949f"

    .line 60
    iput-object p1, v0, Lcn/baos/watch/w100/messages/AddAlarm;->reminder:Ljava/lang/String;

    .line 61
    iput-object p1, v0, Lcn/baos/watch/w100/messages/AddAlarm;->event:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u673a\u95f9\u949f\u7ba1\u7406\u53d1\u9001alarm:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setCrudClockListener(ILcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    .line 65
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public updateAlarmToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 8

    .line 89
    new-instance v0, Lcn/baos/watch/w100/messages/ModifyAlarm;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/ModifyAlarm;-><init>()V

    .line 90
    sget v1, Lcn/baos/watch/sdk/entitiy/Constant;->alarm_version:I

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->verison:I

    .line 91
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->getId()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->id:I

    .line 92
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->getTimeWhen()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getClockManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)J

    move-result-wide v2

    .line 92
    invoke-static {v1, v2, v3}, Lcn/baos/watch/sdk/util/TimeUtils;->getCycleModel(Ljava/lang/String;J)Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleType()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->circle_type:I

    .line 95
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleExtra()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->circle_extra:I

    .line 96
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfWeek()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->mask_wday:I

    .line 97
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfMouth()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->mask_mday:I

    .line 98
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getWeekOfMouth()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->mask_mweek:I

    .line 99
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getMouthOfYear()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->mask_ymonth:I

    .line 100
    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneChange()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->time_zone:I

    .line 101
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getClockManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->start_time:I

    const-string v1, "\u95f9\u949f"

    .line 102
    iput-object v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->reminder:Ljava/lang/String;

    .line 103
    iput-object v1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->event:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 105
    sget p1, Lcn/baos/watch/sdk/entitiy/Constant;->checkOpen:I

    iput p1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->status:I

    goto :goto_64

    .line 107
    :cond_60
    sget p1, Lcn/baos/watch/sdk/entitiy/Constant;->checkClose:I

    iput p1, v0, Lcn/baos/watch/w100/messages/ModifyAlarm;->status:I

    .line 109
    :goto_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u4fee\u6539\u95f9\u949f\u7ba1\u7406alarm:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setCrudClockListener(ILcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    .line 112
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public updateReminderToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 8

    .line 148
    new-instance v0, Lcn/baos/watch/w100/messages/ModifyReminder;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/ModifyReminder;-><init>()V

    .line 149
    sget v1, Lcn/baos/watch/sdk/entitiy/Constant;->alarm_version:I

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->verison:I

    .line 150
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getId()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->id:I

    .line 151
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getCircleType()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getReminderManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)J

    move-result-wide v2

    .line 151
    invoke-static {v1, v2, v3}, Lcn/baos/watch/sdk/util/TimeUtils;->getCycleModel(Ljava/lang/String;J)Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleType()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->circle_type:I

    .line 154
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleExtra()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->circle_extra:I

    .line 155
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfWeek()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_wday:I

    .line 156
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfMouth()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_mday:I

    .line 157
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getWeekOfMouth()I

    move-result v2

    iput v2, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_mweek:I

    .line 158
    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getMouthOfYear()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_ymonth:I

    .line 159
    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneChange()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->time_zone:I

    .line 160
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getReminderManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->start_time:I

    .line 161
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getReminder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->reminder:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->getEvent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->event:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 164
    sget p1, Lcn/baos/watch/sdk/entitiy/Constant;->checkOpen:I

    iput p1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->status:I

    goto :goto_6a

    .line 166
    :cond_66
    sget p1, Lcn/baos/watch/sdk/entitiy/Constant;->checkClose:I

    iput p1, v0, Lcn/baos/watch/w100/messages/ModifyReminder;->status:I

    .line 168
    :goto_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u65e5\u7a0b\u7ba1\u7406\u4fee\u6539\u63d0\u9192reminder:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setCrudReminderListener(ILcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    .line 171
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method
