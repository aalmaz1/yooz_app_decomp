.class final Lcom/google/android/gms/internal/play_billing/zzhr;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdh;


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzdh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzhr;->zza:Lcom/google/android/gms/internal/play_billing/zzdh;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    return v0
.end method
