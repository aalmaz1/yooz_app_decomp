.class public final synthetic Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/w100/messages/User_info_config;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/w100/messages/User_info_config;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda7;->f$0:Lcn/baos/watch/w100/messages/User_info_config;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda7;->f$0:Lcn/baos/watch/w100/messages/User_info_config;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager$2;->lambda$onUserInfoConfig$5(Lcn/baos/watch/w100/messages/User_info_config;)V

    return-void
.end method
