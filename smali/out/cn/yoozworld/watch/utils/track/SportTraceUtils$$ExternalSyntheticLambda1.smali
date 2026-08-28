.class public final synthetic Lcn/yoozworld/watch/utils/track/SportTraceUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/track/SportTraceUtils;->lambda$getOriginPoints$1(Ljava/util/Map;)D

    move-result-wide v0

    return-wide v0
.end method
