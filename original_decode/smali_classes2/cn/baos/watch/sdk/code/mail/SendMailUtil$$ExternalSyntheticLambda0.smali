.class public final synthetic Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lcn/baos/watch/sdk/code/mail/SendMailCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/baos/watch/sdk/code/mail/SendMailCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$3:Lcn/baos/watch/sdk/code/mail/SendMailCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcn/baos/watch/sdk/code/mail/SendMailUtil$$ExternalSyntheticLambda0;->f$3:Lcn/baos/watch/sdk/code/mail/SendMailCallback;

    invoke-static {v0, v1, v2, v3}, Lcn/baos/watch/sdk/code/mail/SendMailUtil;->lambda$send$0(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/baos/watch/sdk/code/mail/SendMailCallback;)V

    return-void
.end method
