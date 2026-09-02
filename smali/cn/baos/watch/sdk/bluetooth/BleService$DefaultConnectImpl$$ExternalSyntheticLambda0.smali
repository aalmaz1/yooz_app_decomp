.class public final synthetic Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/sdk/bluetooth/BleService;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda0;->f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda0;->f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    return-void
.end method
