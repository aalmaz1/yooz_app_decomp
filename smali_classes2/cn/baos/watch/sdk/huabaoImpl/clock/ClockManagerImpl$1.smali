.class Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;
.super Ljava/lang/Object;
.source "ClockManagerImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->requestClockListToWatch(Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

.field final synthetic val$onGetClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;->this$0:Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;->val$onGetClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetClockData(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u62c9\u53d6\u95f9\u949f:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;->val$onGetClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;->onGetClockData(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)V

    :cond_0
    return-void
.end method

.method public onGetClockDateFinish()V
    .locals 1

    const-string v0, "\u62c9\u53d6\u95f9\u949f\u5b8c\u6210:\u7ed3\u675f"

    .line 40
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl$1;->val$onGetClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;->onGetClockDateFinish()V

    :cond_0
    return-void
.end method
