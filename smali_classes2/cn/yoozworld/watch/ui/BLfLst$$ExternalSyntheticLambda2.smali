.class public final synthetic Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    check-cast p2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    invoke-static {p1, p2}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$19(Lcn/baos/watch/sdk/database/gps/GpslocEntity;Lcn/baos/watch/sdk/database/gps/GpslocEntity;)I

    move-result p1

    return p1
.end method
