.class public Lcn/baos/watch/sdk/old/MainHandler;
.super Landroid/os/Handler;
.source "MainHandler.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/old/MainHandler;


# instance fields
.field private hasRead:Z

.field private mActivity:Landroid/app/Activity;

.field private mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/old/MainHandler;
    .locals 2

    .line 37
    sget-object v0, Lcn/baos/watch/sdk/old/MainHandler;->instance:Lcn/baos/watch/sdk/old/MainHandler;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcn/baos/watch/sdk/old/MainHandler;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/old/MainHandler;->instance:Lcn/baos/watch/sdk/old/MainHandler;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcn/baos/watch/sdk/old/MainHandler;

    invoke-direct {v1}, Lcn/baos/watch/sdk/old/MainHandler;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/old/MainHandler;->instance:Lcn/baos/watch/sdk/old/MainHandler;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/old/MainHandler;->instance:Lcn/baos/watch/sdk/old/MainHandler;

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "phone \u624b\u8868\u7aef\u8981\u6c42\u6302\u65ad\u7535\u8bdd"

    .line 304
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    iget-object p1, p0, Lcn/baos/watch/sdk/old/MainHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->endCall(Landroid/content/Context;)V

    .line 306
    invoke-static {}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->endCall()V

    goto/16 :goto_0

    .line 296
    :pswitch_1
    iget-object p1, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    if-nez p1, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setPhoneState(I)V

    .line 299
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendAppSystemPhone(Lcn/baos/watch/sdk/entitiy/CallInfoEntity;)V

    const-string p1, "phone \u6302\u65ad\u7535\u8bdd"

    .line 300
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :pswitch_2
    iget-object p1, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 291
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setPhoneState(I)V

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "phone \u63a5\u542c\u7535\u8bdd:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendAppSystemPhone(Lcn/baos/watch/sdk/entitiy/CallInfoEntity;)V

    goto :goto_0

    .line 283
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    iput-object p1, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setPhoneState(I)V

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "phone \u54cd\u94c3:CALL_STATE_RINGING:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mCallInfoEntity:Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendAppSystemPhone(Lcn/baos/watch/sdk/entitiy/CallInfoEntity;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendVolumeWhenChange()V

    goto :goto_0

    .line 311
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/w100/messages/MusicControlRequest;

    .line 312
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handleCommandFromWatchToControlMusic(Lcn/baos/watch/w100/messages/MusicControlRequest;)V

    goto :goto_0

    .line 67
    :cond_4
    iget-object v0, p0, Lcn/baos/watch/sdk/old/MainHandler;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/baos/watch/sdk/old/MainHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/baos/watch/sdk/old/MainHandler;->mContext:Landroid/content/Context;

    return-void
.end method
