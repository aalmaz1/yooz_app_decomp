.class Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;
.super Ljava/lang/Object;
.source "ReminderManagerImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->addReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

.field final synthetic val$onCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

.field final synthetic val$reminderListEntity:Lcn/baos/watch/sdk/entitiy/ReminderListEntity;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$reminderListEntity:Lcn/baos/watch/sdk/entitiy/ReminderListEntity;

    iput-object p3, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$onCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrudReminderFail(I)V
    .registers 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63d0\u9192\u7ba1\u7406 addReminder fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$reminderListEntity:Lcn/baos/watch/sdk/entitiy/ReminderListEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$onCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

    if-eqz v0, :cond_1f

    .line 67
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;->onCrudReminderFail(I)V

    :cond_1f
    return-void
.end method

.method public onCrudReminderSuccess(II)V
    .registers 5

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$reminderListEntity:Lcn/baos/watch/sdk/entitiy/ReminderListEntity;

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->setId(I)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63d0\u9192\u7ba1\u7406 addReminder success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$reminderListEntity:Lcn/baos/watch/sdk/entitiy/ReminderListEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl$2;->val$onCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

    if-eqz v0, :cond_24

    .line 59
    invoke-interface {v0, p1, p2}, Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;->onCrudReminderSuccess(II)V

    :cond_24
    return-void
.end method
