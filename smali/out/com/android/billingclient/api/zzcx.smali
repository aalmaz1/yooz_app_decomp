.class public final Lcom/android/billingclient/api/zzcx;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzcx;->zza:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/zzcx;->zzb:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/android/billingclient/api/BillingResult;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzcx;->zzb:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzcx;->zza:Ljava/util/List;

    return-object v0
.end method
