.class public Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;
.super Ljava/lang/Object;
.source "ReminderManagerImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/reminder/IReminderManager;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;
    .locals 2

    .line 20
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    return-object v0
.end method


# virtual methods
.method public addReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->setCrudState(I)V

    .line 53
    invoke-static {}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;-><init>(Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->addReminderToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    return-void
.end method

.method public deleteReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->setCrudState(I)V

    .line 76
    invoke-static {}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$3;-><init>(Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->deleteReminderToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    return-void
.end method

.method public requestReminderListToWatch(Lcn/baos/watch/w100/messages/QueryReminder;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V
    .locals 2

    .line 32
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;

    invoke-direct {v1, p0, p2}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;-><init>(Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestReminderListToWatch(Lcn/baos/watch/w100/messages/QueryReminder;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V

    return-void
.end method

.method public updateReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .locals 2

    const/4 v0, 0x2

    .line 98
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->setCrudState(I)V

    .line 99
    invoke-static {}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->getInstance()Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$4;-><init>(Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/manager/clock/ClockAgendaCrudUtils;->updateReminderToWatchByPhone(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    return-void
.end method
