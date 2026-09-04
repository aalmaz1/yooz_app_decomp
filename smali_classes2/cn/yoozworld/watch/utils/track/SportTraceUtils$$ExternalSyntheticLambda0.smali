.class public final synthetic Lcn/yoozworld/watch/utils/track/SportTraceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/track/SportTraceUtils;->lambda$getOriginPoints$0(Ljava/util/Map;)D

    move-result-wide v0

    return-wide v0
.end method
