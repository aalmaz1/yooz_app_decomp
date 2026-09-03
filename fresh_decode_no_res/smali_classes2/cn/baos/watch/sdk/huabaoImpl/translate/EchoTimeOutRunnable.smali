.class public Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;
.super Ljava/util/TimerTask;
.source "EchoTimeOutRunnable.java"


# instance fields
.field private isRun:Z

.field private mEchoTimeOutCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutCallback;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutCallback;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;->isRun:Z

    .line 15
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;->mEchoTimeOutCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;->isRun:Z

    if-eqz v0, :cond_0

    const-string v0, "ota\u53d1\u9001\u6570\u636e\u5305,30\u79d2\u5185\u6d88\u606f\u4e00\u76f4\u6ca1\u6709\u56de\u590d\uff0c\u4f20\u8f93\u8d85\u65f6"

    .line 21
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;->mEchoTimeOutCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutCallback;

    invoke-interface {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutCallback;->onEchoTimeOut()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;->isRun:Z

    return-void
.end method
