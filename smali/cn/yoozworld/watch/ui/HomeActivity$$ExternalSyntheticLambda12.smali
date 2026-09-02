.class public final synthetic Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/sdk/entitiy/QrEntity;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda12;->f$0:Lcn/baos/watch/sdk/entitiy/QrEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda12;->f$0:Lcn/baos/watch/sdk/entitiy/QrEntity;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onActivityResult$9(Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    return-void
.end method
