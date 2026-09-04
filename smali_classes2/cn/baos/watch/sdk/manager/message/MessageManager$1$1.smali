.class Lcn/baos/watch/sdk/manager/message/MessageManager$1$1;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/manager/message/MessageManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/manager/message/MessageManager$1;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/message/MessageManager$1;)V
    .locals 0

    .line 1579
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager$1$1;->this$1:Lcn/baos/watch/sdk/manager/message/MessageManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1582
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager$1$1;->this$1:Lcn/baos/watch/sdk/manager/message/MessageManager$1;

    iget-object v0, v0, Lcn/baos/watch/sdk/manager/message/MessageManager$1;->this$0:Lcn/baos/watch/sdk/manager/message/MessageManager;

    const-string v1, "phone \u6765\u7535\u72b6\u6001\u5b58\u50a8\u503c\u91cd\u7f6e"

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager$1$1;->this$1:Lcn/baos/watch/sdk/manager/message/MessageManager$1;

    iget-object v0, v0, Lcn/baos/watch/sdk/manager/message/MessageManager$1;->this$0:Lcn/baos/watch/sdk/manager/message/MessageManager;

    const/4 v1, 0x4

    iput v1, v0, Lcn/baos/watch/sdk/manager/message/MessageManager;->previous:I

    return-void
.end method
