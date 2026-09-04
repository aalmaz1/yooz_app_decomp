.class public Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;
.super Ljava/lang/Object;
.source "SyncDataManager.java"


# static fields
.field public static final SYNC_END:I = 0x0

.field public static final SYNC_ING:I = 0x1

.field private static instance:Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;


# instance fields
.field private mSyncStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->mSyncStatus:I

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;
    .locals 2

    .line 23
    sget-object v0, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->instance:Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->instance:Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->instance:Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->instance:Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    return-object v0
.end method


# virtual methods
.method public sendSyncDataFromServerToWatch([B)V
    .locals 3

    .line 115
    invoke-static {p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p1

    const/16 v0, 0x65

    const/16 v1, 0x64

    if-eqz p1, :cond_0

    .line 116
    iget v2, p1, Lcn/baos/message/Serializable;->catagory:I

    if-eq v2, v1, :cond_0

    iget v2, p1, Lcn/baos/message/Serializable;->catagory:I

    if-eq v2, v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65->\u63a5\u6536\u670d\u52a1\u5668\u5bf9\u8c61\u5e76\u53d1\u9001\u7ed9\u624b\u8868:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 119
    iget v2, p1, Lcn/baos/message/Serializable;->catagory:I

    if-eq v2, v1, :cond_1

    iget v1, p1, Lcn/baos/message/Serializable;->catagory:I

    if-ne v1, v0, :cond_2

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65->\u63a5\u6536\u670d\u52a1\u5668\u5bf9\u8c61:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65->\u63a5\u6536\u670d\u52a1\u5668\u5bf9\u8c61:\u670d\u52a1\u5668\u5904\u7406\u5f02\u5e38:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcn/baos/message/Serializable;->catagory:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6570\u636e\u540c\u6b65->\u63a5\u6536\u670d\u52a1\u5668\u5bf9\u8c61\u4e3a\u7a7a"

    .line 123
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, "\u6570\u636e\u540c\u6b65->\u63a5\u6536\u670d\u52a1\u5668\u5bf9\u8c61\u4e3a\u7a7a,unpack\u5f02\u5e38"

    .line 124
    invoke-static {p1}, Lcn/baos/watch/sdk/code/LV;->logText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
