.class Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;
.super Ljava/lang/Object;
.source "ReminderManagerImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->requestReminderListToWatch(Lcn/baos/watch/w100/messages/QueryReminder;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

.field final synthetic val$onGetReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;->this$0:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;->val$onGetReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetReminderData(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u62c9\u53d6\u63d0\u9192:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;->val$onGetReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;->onGetReminderData(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)V

    :cond_0
    return-void
.end method

.method public onGetReminderDateFinish()V
    .locals 1

    const-string v0, "\u62c9\u53d6\u63d0\u9192\u5b8c\u6210:\u7ed3\u675f"

    .line 43
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$1;->val$onGetReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;->onGetReminderDateFinish()V

    :cond_0
    return-void
.end method
