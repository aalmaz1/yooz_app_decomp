.class public final synthetic Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/yoozworld/watch/ui/BLfLst;

.field public final synthetic f$1:Lcn/baos/watch/w100/messages/Sensor_data_battery;


# direct methods
.method public synthetic constructor <init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;->f$0:Lcn/yoozworld/watch/ui/BLfLst;

    iput-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;->f$1:Lcn/baos/watch/w100/messages/Sensor_data_battery;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;->f$0:Lcn/yoozworld/watch/ui/BLfLst;

    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;->f$1:Lcn/baos/watch/w100/messages/Sensor_data_battery;

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/BLfLst;->$r8$lambda$vpqkUdG8Rwn93c9j_yYoKnzBDq4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    return-void
.end method
