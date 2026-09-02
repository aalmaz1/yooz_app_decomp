.class public final synthetic Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda9;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda9;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onActivityResult$15(Landroid/content/Intent;)V

    return-void
.end method
