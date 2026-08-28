.class public final synthetic Lcom/android/billingclient/api/zzaw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzay;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzaw;->zza:Lcom/android/billingclient/api/zzay;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzaw;->zza:Lcom/android/billingclient/api/zzay;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzay;->zzb()V

    return-void
.end method
