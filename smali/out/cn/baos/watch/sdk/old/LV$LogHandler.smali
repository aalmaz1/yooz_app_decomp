.class public Lcn/baos/watch/sdk/old/LV$LogHandler;
.super Landroid/os/Handler;
.source "LV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/old/LV;
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
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 28
    invoke-static {}, Lcn/baos/watch/sdk/old/LV;->-$$Nest$sfgetsTextView()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    invoke-static {}, Lcn/baos/watch/sdk/old/LV;->-$$Nest$sfgetsTextView()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_12
    if-eqz v0, :cond_2c

    .line 30
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    goto :goto_2c

    .line 35
    :cond_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/old/LV;->-$$Nest$smlogError(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2c

    .line 32
    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/old/LV;->-$$Nest$smlogText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method
