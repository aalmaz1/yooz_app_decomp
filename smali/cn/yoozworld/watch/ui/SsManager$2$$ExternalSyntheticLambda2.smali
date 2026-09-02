.class public final synthetic Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda2;->f$0:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda2;->f$0:[B

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager$2;->lambda$onCollectWatchLoggerRequest$1([B)V

    return-void
.end method
