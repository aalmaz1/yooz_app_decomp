.class public final synthetic Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcn/baos/watch/sdk/old/mail/SendMailCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;->f$2:Lcn/baos/watch/sdk/old/mail/SendMailCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;->f$2:Lcn/baos/watch/sdk/old/mail/SendMailCallback;

    invoke-static {v0, v1, v2}, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->lambda$send$1(Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V

    return-void
.end method
