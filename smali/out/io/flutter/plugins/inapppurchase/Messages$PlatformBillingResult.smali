.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformBillingResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;
    }
.end annotation


# instance fields
.field private debugMessage:Ljava/lang/String;

.field private responseCode:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;"
        }
    .end annotation

    .line 351
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;-><init>()V

    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_24

    .line 356
    :cond_e
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_20

    :cond_1a
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 353
    :goto_24
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->setResponseCode(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 358
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->setDebugMessage(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDebugMessage()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->debugMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/Long;
    .registers 2

    .line 290
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->responseCode:Ljava/lang/Long;

    return-object v0
.end method

.method public setDebugMessage(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 310
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->debugMessage:Ljava/lang/String;

    return-void

    .line 308
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"debugMessage\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResponseCode(Ljava/lang/Long;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 297
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->responseCode:Ljava/lang/Long;

    return-void

    .line 295
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"responseCode\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->responseCode:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->debugMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
