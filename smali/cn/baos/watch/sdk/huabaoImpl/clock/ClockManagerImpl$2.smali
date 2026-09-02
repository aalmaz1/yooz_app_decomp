.class Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;
.super Ljava/lang/Object;
.source "ClockManagerImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->addAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

.field final synthetic val$clockListEntity:Lcn/baos/watch/sdk/entitiy/ClockListEntity;

.field final synthetic val$crudClockListener:Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$clockListEntity:Lcn/baos/watch/sdk/entitiy/ClockListEntity;

    iput-object p3, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$crudClockListener:Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrudClockFail(I)V
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u95f9\u949f\u7ba1\u7406 addAlarm fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$clockListEntity:Lcn/baos/watch/sdk/entitiy/ClockListEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$crudClockListener:Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;

    if-eqz v0, :cond_1f

    .line 66
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;->onCrudClockFail(I)V

    :cond_1f
    return-void
.end method

.method public onCrudClockSuccess(II)V
    .registers 5

    .line 55
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$clockListEntity:Lcn/baos/watch/sdk/entitiy/ClockListEntity;

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->setId(I)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u95f9\u949f\u7ba1\u7406 addAlarm success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$clockListEntity:Lcn/baos/watch/sdk/entitiy/ClockListEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$2;->val$crudClockListener:Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;

    if-eqz v0, :cond_24

    .line 58
    invoke-interface {v0, p1, p2}, Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;->onCrudClockSuccess(II)V

    :cond_24
    return-void
.end method
