.class final Lcom/google/android/gms/internal/play_billing/zzgi;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdh;


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzdh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgi;->zza:Lcom/google/android/gms/internal/play_billing/zzdh;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_a

    packed-switch p1, :pswitch_data_2e

    const/4 p1, 0x0

    return p1

    :pswitch_8
    const/4 p1, 0x1

    return p1

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x16
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
