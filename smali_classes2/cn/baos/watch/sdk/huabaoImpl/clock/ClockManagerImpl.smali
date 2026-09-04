.class public Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;
.super Ljava/lang/Object;
.source "ClockManagerImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/clock/IClockManager;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;
    .locals 2

    .line 16
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    return-object v0
.end method


# virtual methods
.method public addAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->setCrudState(I)V

    .line 52
    invoke-static {}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;-><init>(Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->setAlarmToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    return-void
.end method

.method public deleteAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->setCrudState(I)V

    .line 75
    invoke-static {}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$3;-><init>(Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->deleteAlarmToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    return-void
.end method

.method public requestClockListToWatch(Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V
    .locals 2

    .line 29
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;-><init>(Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestClockListToWatch(Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V

    return-void
.end method

.method public updateAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->setCrudState(I)V

    .line 98
    invoke-static {}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$4;-><init>(Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->updateAlarmToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    return-void
.end method
