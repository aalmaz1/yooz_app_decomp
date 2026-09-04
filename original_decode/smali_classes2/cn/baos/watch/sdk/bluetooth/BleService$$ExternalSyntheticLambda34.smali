.class public final synthetic Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/sdk/bluetooth/BleService;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda34;->f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda34;->f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestBleSuccess()V

    return-void
.end method
