.class Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/manager/notification/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/manager/notification/NotificationHandler;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/notification/NotificationHandler;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;->this$0:Lcn/baos/watch/sdk/manager/notification/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 283
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1$1;-><init>(Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
