.class public final synthetic Lcn/yoozworld/watch/utils/track/SportTraceUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/track/SportTraceUtils;->lambda$getOriginPoints$2(Ljava/util/Map;)I

    move-result p1

    return p1
.end method
