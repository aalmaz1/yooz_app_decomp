.class Lcn/baos/watch/sdk/code/test/TestHandler$1;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/code/test/TestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/code/test/TestHandler;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$1;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$1$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$1$1;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
