.class public final Lcom/google/firebase/analytics/connector/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@22.1.2"


# static fields
.field private static final zza:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const-string v0, "_in"

    const-string v1, "_xa"

    const-string v2, "_xu"

    const-string v3, "_aq"

    const-string v4, "_aa"

    const-string v5, "_ai"

    const-string v6, "_ac"

    const-string v7, "campaign_details"

    const-string v8, "_ug"

    const-string v9, "_iapx"

    const-string v10, "_exp_set"

    const-string v11, "_exp_clear"

    const-string v12, "_exp_activate"

    const-string v13, "_exp_timeout"

    const-string v14, "_exp_expire"

    .line 76
    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zza:Lcom/google/common/collect/ImmutableSet;

    const-string v1, "_e"

    const-string v2, "_f"

    const-string v3, "_iap"

    const-string v4, "_s"

    const-string v5, "_au"

    const-string v6, "_ui"

    const-string v7, "_cd"

    .line 79
    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb:Lcom/google/common/collect/ImmutableList;

    const-string v0, "app"

    const-string v1, "am"

    const-string v2, "auto"

    .line 81
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzc:Lcom/google/common/collect/ImmutableList;

    const-string v0, "_r"

    const-string v1, "_dbg"

    .line 83
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 84
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zza:[Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zzb:[Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zze:Lcom/google/common/collect/ImmutableList;

    const-string v0, "^_ltv_[A-Z]{3}$"

    const-string v1, "^_cc[1-5]{1}$"

    .line 89
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static zza(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "origin"

    .line 3
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_10
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const-string v1, "name"

    .line 5
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1b
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    if-eqz v1, :cond_24

    .line 7
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 8
    :cond_24
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    if-eqz v1, :cond_2f

    const-string v1, "trigger_event_name"

    .line 9
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v1, "trigger_timeout"

    .line 10
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, "timed_out_event_name"

    .line 12
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_41
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_4c

    const-string v1, "timed_out_event_params"

    .line 14
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    :cond_4c
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    if-eqz v1, :cond_57

    const-string v1, "triggered_event_name"

    .line 16
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_57
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_62

    const-string v1, "triggered_event_params"

    .line 18
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_62
    const-string v1, "time_to_live"

    .line 19
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    if-eqz v1, :cond_74

    const-string v1, "expired_event_name"

    .line 21
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_74
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_7f

    const-string v1, "expired_event_params"

    .line 23
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7f
    const-string v1, "creation_timestamp"

    .line 24
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "active"

    .line 25
    iget-boolean v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->active:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "triggered_timestamp"

    .line 26
    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static zza(Landroid/os/Bundle;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    .registers 7

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;-><init>()V

    .line 30
    const-class v1, Ljava/lang/String;

    const-string v2, "origin"

    const/4 v3, 0x0

    .line 31
    invoke-static {p0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    const-string v1, "name"

    .line 33
    const-class v2, Ljava/lang/String;

    .line 34
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    const-string v1, "value"

    .line 36
    const-class v2, Ljava/lang/Object;

    .line 37
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    const-string v1, "trigger_event_name"

    .line 38
    const-class v2, Ljava/lang/String;

    .line 39
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    .line 40
    const-class v1, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "trigger_timeout"

    .line 42
    invoke-static {p0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    const-string v1, "timed_out_event_name"

    .line 43
    const-class v4, Ljava/lang/String;

    .line 44
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    const-string v1, "timed_out_event_params"

    .line 45
    const-class v4, Landroid/os/Bundle;

    .line 46
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    const-string v1, "triggered_event_name"

    .line 47
    const-class v4, Ljava/lang/String;

    .line 48
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    const-string v1, "triggered_event_params"

    .line 49
    const-class v4, Landroid/os/Bundle;

    .line 50
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    .line 51
    const-class v1, Ljava/lang/Long;

    const-string v4, "time_to_live"

    .line 53
    invoke-static {p0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    const-string v1, "expired_event_name"

    .line 54
    const-class v4, Ljava/lang/String;

    .line 55
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    const-string v1, "expired_event_params"

    .line 56
    const-class v4, Landroid/os/Bundle;

    .line 57
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    .line 58
    const-class v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 59
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "active"

    .line 60
    invoke-static {p0, v4, v1, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->active:Z

    .line 61
    const-class v1, Ljava/lang/Long;

    const-string v3, "creation_timestamp"

    .line 63
    invoke-static {p0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    .line 64
    const-class v1, Ljava/lang/Long;

    const-string v3, "triggered_timestamp"

    .line 66
    invoke-static {p0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredTimestamp:J

    return-object v0
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 68
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "clx"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "_ae"

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "_r"

    const-wide/16 v0, 0x1

    .line 93
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_17
    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6

    .line 170
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    if-eqz p1, :cond_27

    .line 173
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzd:Lcom/google/common/collect/ImmutableList;

    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    move v2, v0

    :cond_16
    if-ge v2, v1, :cond_27

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    return v0

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "_ce1"

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fcm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_53

    const-string v0, "_ce2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_53

    :cond_15
    const-string v0, "_ln"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v3

    :cond_2d
    :goto_2d
    return v2

    .line 184
    :cond_2e
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzb;->zze:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v3

    .line 186
    :cond_37
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf:Lcom/google/common/collect/ImmutableList;

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    move v1, v3

    :cond_41
    if-ge v1, v0, :cond_52

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Ljava/lang/String;

    .line 187
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    return v3

    :cond_52
    return v2

    .line 181
    :cond_53
    :goto_53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    const-string p1, "frc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    goto :goto_63

    :cond_62
    return v3

    :cond_63
    :goto_63
    return v2
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static zzb(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    if-eqz v1, :cond_7c

    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7c

    .line 148
    :cond_f
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    return v0

    .line 150
    :cond_1c
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    return v0

    .line 152
    :cond_23
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v0

    .line 154
    :cond_2c
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 155
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3b

    return v0

    .line 157
    :cond_3b
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_46

    return v0

    .line 159
    :cond_46
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    if-eqz v2, :cond_60

    .line 160
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_55

    return v0

    .line 162
    :cond_55
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_60

    return v0

    .line 164
    :cond_60
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    if-eqz v2, :cond_7a

    .line 165
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_6f

    return v0

    .line 167
    :cond_6f
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, p0}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_7a

    return v0

    :cond_7a
    const/4 p0, 0x1

    return p0

    :cond_7c
    :goto_7c
    return v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8

    const-string v0, "_cmp"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 127
    :cond_a
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    return v1

    :cond_12
    if-nez p2, :cond_15

    return v1

    .line 131
    :cond_15
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/zzb;->zzd:Lcom/google/common/collect/ImmutableList;

    move-object v2, p1

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    move v3, v1

    :cond_1f
    if-ge v3, v2, :cond_30

    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 132
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v1

    .line 135
    :cond_30
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_74

    goto :goto_5c

    :sswitch_3c
    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_5c

    :cond_45
    const/4 v2, 0x2

    goto :goto_5c

    :sswitch_47
    const-string p1, "fdl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_5c

    :cond_50
    move v2, v0

    goto :goto_5c

    :sswitch_52
    const-string p1, "fcm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v1

    :goto_5c
    const-string p0, "_cis"

    packed-switch v2, :pswitch_data_82

    return v1

    :pswitch_62
    const-string p1, "fiam_integration"

    .line 140
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_68
    const-string p1, "fdl_integration"

    .line 138
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_6e
    const-string p1, "fcm_integration"

    .line 136
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :sswitch_data_74
    .sparse-switch
        0x18b50 -> :sswitch_52
        0x18b6e -> :sswitch_47
        0x2ff42f -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_68
        :pswitch_62
    .end packed-switch
.end method

.method public static zzc(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 97
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 99
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_1a

    if-eq v1, v3, :cond_1a

    return v0

    .line 102
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 103
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_22
    if-ge v1, v2, :cond_37

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_31

    .line 105
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_31

    return v0

    .line 107
    :cond_31
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_22

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 112
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 114
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_16

    return v0

    .line 117
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 118
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1e
    if-ge v1, v2, :cond_35

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2f

    .line 120
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_2f

    return v0

    .line 122
    :cond_2f
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1e

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method public static zze(Ljava/lang/String;)Z
    .registers 2

    .line 178
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zza:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zzf(Ljava/lang/String;)Z
    .registers 2

    .line 179
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzc:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
