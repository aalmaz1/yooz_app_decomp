.class Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallListenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;Landroid/content/Context;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->this$0:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 88
    iput-object p2, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .line 93
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "SWITCH_CALL_PHONE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "phone \u6765\u7535\u63d0\u9192\u529f\u80fd\u5df2\u88ab\u7528\u6237\u5173\u95ed"

    .line 96
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phone \u670d\u52a1\u76d1\u542c\u72b6\u6001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7535\u8bdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -->1\u4e3a\u6765\u7535/0\u4e3a\u6302\u65ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    const-string v1, "notificationManageKey"

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryCheckStateLightDb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "phone \u901a\u77e5\u603b\u5f00\u5173\u88ab\u5173\u95ed\u4e86\uff0c\u4e0d\u901a\u77e5"

    .line 102
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "phone \u901a\u77e5\u603b\u5f00\u5173\u88ab\u6253\u5f00\uff0c\u901a\u77e5"

    .line 105
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    iget-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v3, "com.android.incallui"

    .line 108
    invoke-static {v1, v3}, Lcn/baos/watch/sdk/utils/W100Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phone notificationAppListEntity:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 112
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phone notification isCheck is true,\u901a\u77e5:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto/16 :goto_1

    .line 128
    :cond_2
    invoke-static {}, Lcn/baos/watch/sdk/old/MainHandler;->getInstance()Lcn/baos/watch/sdk/old/MainHandler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/old/MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 131
    :cond_3
    sput-boolean v2, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->phoneState:Z

    if-eqz p2, :cond_5

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "null"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 135
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u9700\u8981\u901a\u8baf\u5f55\u6743\u9650\u624d\u80fd\u67e5\u8be2\u624b\u673a\u53f7\u5bf9\u5e94\u540d\u79f0"

    .line 137
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, "\u672a\u77e5"

    .line 140
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, p2

    .line 143
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phone \u6765\u7535\u7535\u8bdd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6765\u7535\u4eba:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcn/baos/watch/sdk/old/MainHandler;->getInstance()Lcn/baos/watch/sdk/old/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-direct {v1, p2, p1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x65

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/old/MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 146
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "phone \u6765\u7535\u7535\u8bdd\u4e3a\u7a7a:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_6
    invoke-static {}, Lcn/baos/watch/sdk/old/MainHandler;->getInstance()Lcn/baos/watch/sdk/old/MainHandler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/old/MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 124
    invoke-static {}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/old/callcontroller/CallStateManager;->quietCallOff()V

    :goto_1
    return-void

    .line 115
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "phone notification isCheck is false or null,\u4e0d\u901a\u77e5:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
