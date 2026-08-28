.class public abstract Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/channel/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimerCallback"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onTimerCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public final run()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 34
    iget-object v2, p0, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s: Timer expired!!!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    .line 36
    :try_start_11
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;->onTimerCallback()V
    :try_end_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :goto_19
    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Timer;->-$$Nest$sfputmCallback(Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V

    return-void
.end method
