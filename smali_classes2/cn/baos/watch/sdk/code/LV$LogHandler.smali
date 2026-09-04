.class public Lcn/baos/watch/sdk/code/LV$LogHandler;
.super Landroid/os/Handler;
.source "LV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/code/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogHandler"
.end annotation


# static fields
.field private static final MSG_ERROR:I = 0x2

.field private static final MSG_LOG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 28
    invoke-static {}, Lcn/baos/watch/sdk/code/LV;->-$$Nest$sfgetsTextView()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/baos/watch/sdk/code/LV;->-$$Nest$sfgetsTextView()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    if-eqz v0, :cond_3

    .line 30
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/code/LV;->-$$Nest$smlogError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/code/LV;->-$$Nest$smlogText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
