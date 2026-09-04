.class public Lcn/yoozworld/watch/utils/notifi/MyHandler;
.super Landroid/os/Handler;
.source "MyHandler.java"


# instance fields
.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/yoozworld/watch/utils/notifi/NotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 20
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "notification"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-eqz p1, :cond_2

    .line 28
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-virtual {v0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->showNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    .line 32
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->hideNotification(I)V

    :cond_2
    :goto_0
    return-void
.end method
