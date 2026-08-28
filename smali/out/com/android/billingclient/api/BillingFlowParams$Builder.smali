.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/List;

.field private zzd:Ljava/util/ArrayList;

.field private zze:Z

.field private zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->zza(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzbr;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->zza(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingFlowParams;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iget-object v3, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    if-eqz v3, :cond_1b

    .line 2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    if-nez v0, :cond_29

    if-eqz v3, :cond_21

    goto :goto_29

    .line 10
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Details of the products must be provided."

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    if-eqz v0, :cond_36

    if-nez v3, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set SkuDetails or ProductDetailsParams, not both."

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    const/4 v4, 0x0

    const-string v5, "play_pass_subs"

    if-eqz v0, :cond_cd

    .line 2
    iget-object v6, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c5

    .line 20
    iget-object v6, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v1, :cond_16f

    iget-object v6, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 23
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 24
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_5e
    if-ge v10, v9, :cond_8c

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 25
    check-cast v11, Lcom/android/billingclient/api/SkuDetails;

    .line 26
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    .line 27
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    .line 28
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    goto :goto_89

    .line 48
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKUs should have the same type."

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    :goto_89
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 30
    :cond_8c
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 24
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_97
    if-ge v10, v9, :cond_16f

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 31
    check-cast v11, Lcom/android/billingclient/api/SkuDetails;

    .line 32
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c2

    .line 33
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c2

    .line 34
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    goto :goto_c2

    .line 29
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All SKUs must have the same package name."

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c2
    :goto_c2
    add-int/lit8 v10, v10, 0x1

    goto :goto_97

    .line 19
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_cd
    iget-object v6, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move v7, v2

    :goto_d6
    iget-object v8, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_122

    iget-object v8, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 5
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    if-eqz v8, :cond_11a

    if-eqz v7, :cond_117

    .line 9
    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v9

    .line 6
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_117

    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10f

    goto :goto_117

    .line 18
    :cond_10f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All products should have same ProductType."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_117
    :goto_117
    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    .line 5
    :cond_11a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetailsParams cannot be null."

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_122
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 12
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_130
    :goto_130
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 13
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_130

    .line 14
    invoke-virtual {v9}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v10

    .line 15
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_130

    .line 17
    invoke-virtual {v9}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_167

    goto :goto_130

    :cond_167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All products must have the same package name."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_16f
    new-instance v5, Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {v5, v4}, Lcom/android/billingclient/api/BillingFlowParams;-><init>(Lcom/android/billingclient/api/zzbw;)V

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a2

    :cond_188
    if-eqz v3, :cond_1a1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 37
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a1

    goto :goto_1a2

    :cond_1a1
    move v1, v2

    :cond_1a2
    :goto_1a2
    invoke-static {v5, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzi(Lcom/android/billingclient/api/BillingFlowParams;Z)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zza:Ljava/lang/String;

    .line 40
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzk(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzb:Ljava/lang/String;

    .line 41
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzl(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 42
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzo(Lcom/android/billingclient/api/BillingFlowParams;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c2

    new-instance v1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1c7

    .line 46
    :cond_1c2
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1c7
    invoke-static {v5, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzn(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zze:Z

    .line 44
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzj(Lcom/android/billingclient/api/BillingFlowParams;Z)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    if-eqz v0, :cond_1d8

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzai;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/zzai;

    move-result-object v0

    goto :goto_1dc

    .line 46
    :cond_1d8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzai;->zzk()Lcom/google/android/gms/internal/play_billing/zzai;

    move-result-object v0

    :goto_1dc
    invoke-static {v5, v0}, Lcom/android/billingclient/api/BillingFlowParams;->zzm(Lcom/android/billingclient/api/BillingFlowParams;Lcom/google/android/gms/internal/play_billing/zzai;)V

    return-object v5
.end method

.method public setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zze:Z

    return-object p0
.end method

.method public setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;",
            ">;)",
            "Lcom/android/billingclient/api/BillingFlowParams$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->zzc(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    return-object p0
.end method
