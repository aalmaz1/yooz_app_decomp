.class Lcn/baos/watch/sdk/old/test/TestHandler$2$1;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/old/test/TestHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/old/test/TestHandler$2;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/old/test/TestHandler$2;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcn/baos/watch/sdk/old/test/TestHandler$2$1;->this$1:Lcn/baos/watch/sdk/old/test/TestHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 137
    invoke-static {}, Lcn/baos/watch/sdk/old/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/old/test/TestHandler;

    move-result-object v0

    const/16 v1, 0x410

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/old/test/TestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
