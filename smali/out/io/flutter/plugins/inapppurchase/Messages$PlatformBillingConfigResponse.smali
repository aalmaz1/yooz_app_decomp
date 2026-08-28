.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformBillingConfigResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;
    }
.end annotation


# instance fields
.field private billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

.field private countryCode:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;"
        }
    .end annotation

    .line 921
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;-><init>()V

    const/4 v1, 0x0

    .line 922
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_14

    .line 926
    :cond_e
    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object v1

    .line 923
    :goto_14
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)V

    const/4 v1, 0x1

    .line 927
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 928
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->setCountryCode(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBillingResult()Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;
    .registers 2

    .line 860
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .line 873
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 867
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    return-void

    .line 865
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"billingResult\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 880
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->countryCode:Ljava/lang/String;

    return-void

    .line 878
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"countryCode\" is null."

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

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 915
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->toList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
