.class Lcn/baos/watch/sdk/old/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/old/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/old/CrashHandler;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/old/CrashHandler;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcn/baos/watch/sdk/old/CrashHandler$1;->this$0:Lcn/baos/watch/sdk/old/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 110
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 111
    iget-object v0, p0, Lcn/baos/watch/sdk/old/CrashHandler$1;->this$0:Lcn/baos/watch/sdk/old/CrashHandler;

    invoke-static {v0}, Lcn/baos/watch/sdk/old/CrashHandler;->-$$Nest$fgetmContext(Lcn/baos/watch/sdk/old/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 112
    iget-object v0, p0, Lcn/baos/watch/sdk/old/CrashHandler$1;->this$0:Lcn/baos/watch/sdk/old/CrashHandler;

    invoke-static {v0}, Lcn/baos/watch/sdk/old/CrashHandler;->-$$Nest$fgetmContext(Lcn/baos/watch/sdk/old/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7a0b\u5e8f\u5f02\u5e38\uff0c\u5373\u5c06\u9000\u51fa"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    .line 113
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 114
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_20
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
