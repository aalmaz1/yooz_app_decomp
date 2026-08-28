.class Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;
.super Ljava/util/TimerTask;
.source "LocationTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/manager/location/LocationTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneBind888TimerOutRunnable"
.end annotation


# instance fields
.field private isRun:Z

.field final synthetic this$0:Lcn/baos/watch/sdk/manager/location/LocationTimer;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/location/LocationTimer;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->this$0:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->isRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->isRun:Z

    if-eqz v0, :cond_15

    .line 54
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->this$0:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/location/LocationTimer;->-$$Nest$fgetmPhoneBind888TimerOutListener(Lcn/baos/watch/sdk/manager/location/LocationTimer;)Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 55
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->this$0:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/location/LocationTimer;->-$$Nest$fgetmPhoneBind888TimerOutListener(Lcn/baos/watch/sdk/manager/location/LocationTimer;)Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;->onCallBack()V

    :cond_15
    return-void
.end method

.method public setRun(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->isRun:Z

    return-void
.end method
