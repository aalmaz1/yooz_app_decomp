.class public final synthetic Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/w100/messages/Device_resource_info;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/w100/messages/Device_resource_info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda4;->f$0:Lcn/baos/watch/w100/messages/Device_resource_info;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda4;->f$0:Lcn/baos/watch/w100/messages/Device_resource_info;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager$2;->lambda$onDeviceResourceInfo$0(Lcn/baos/watch/w100/messages/Device_resource_info;)V

    return-void
.end method
