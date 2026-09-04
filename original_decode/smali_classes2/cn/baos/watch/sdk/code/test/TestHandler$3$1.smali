.class Lcn/baos/watch/sdk/code/test/TestHandler$3$1;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/code/test/TestHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/code/test/TestHandler$3;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/code/test/TestHandler$3;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$3$1;->this$1:Lcn/baos/watch/sdk/code/test/TestHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
