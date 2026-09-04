.class Lcn/baos/watch/sdk/old/test/TestHandler$6;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/old/test/TestHandler;->openAssets()V
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

    .line 505
    iput-object p1, p0, Lcn/baos/watch/sdk/old/test/TestHandler$6;->this$0:Lcn/baos/watch/sdk/old/test/TestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcn/baos/watch/sdk/old/test/TestHandler$6;->this$0:Lcn/baos/watch/sdk/old/test/TestHandler;

    const-string v1, "GoldMountain_v0.0.1.dial.pkg"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/baos/watch/sdk/old/test/TestHandler;->-$$Nest$mcopyAssets(Lcn/baos/watch/sdk/old/test/TestHandler;Ljava/lang/String;I)V

    return-void
.end method
