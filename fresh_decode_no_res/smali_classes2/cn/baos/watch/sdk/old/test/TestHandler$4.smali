.class Lcn/baos/watch/sdk/old/test/TestHandler$4;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/old/test/TestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/old/test/TestHandler;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/old/test/TestHandler;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcn/baos/watch/sdk/old/test/TestHandler$4;->this$0:Lcn/baos/watch/sdk/old/test/TestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/old/test/TestHandler$4$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/old/test/TestHandler$4$1;-><init>(Lcn/baos/watch/sdk/old/test/TestHandler$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
