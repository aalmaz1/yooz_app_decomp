.class Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1$1;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1$1;->this$1:Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const-string v0, "\u901a\u77e5\u5185\u5bb9\u5b58\u50a8\u5e38\u91cf\u91cd\u7f6e"

    .line 286
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1$1;->this$1:Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;

    iget-object v0, v0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;->this$0:Lcn/baos/watch/sdk/manager/notification/NotificationHandler;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->-$$Nest$fgetmNotificationContents(Lcn/baos/watch/sdk/manager/notification/NotificationHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
