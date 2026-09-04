.class Lcn/baos/watch/sdk/bluetooth/BleService$4;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/BleService;->unBindWatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$4;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindSuccess()V
    .locals 0

    return-void
.end method

.method public onUnbindSuccess()V
    .locals 0

    return-void
.end method
