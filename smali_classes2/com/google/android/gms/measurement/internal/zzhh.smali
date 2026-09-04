.class final Lcom/google/android/gms/measurement/internal/zzhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbz;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhi;Lcom/google/android/gms/internal/measurement/zzbz;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhi;->zza(Lcom/google/android/gms/measurement/internal/zzhi;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Landroid/content/ServiceConnection;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbz;)Landroid/os/Bundle;

    move-result-object v3

    .line 5
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 7
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhy;->zzy()V

    if-eqz v3, :cond_b

    const-string v5, "install_begin_timestamp_seconds"

    const-wide/16 v6, 0x0

    .line 9
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Service response is missing Install Referrer install timestamp"

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v5, "install_referrer"

    .line 16
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_3

    .line 20
    :cond_1
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v12

    const-string v13, "InstallReferrer API result"

    invoke-virtual {v12, v13, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhy;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    .line 22
    :goto_0
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v15

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "?"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v15, v5, v12}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    .line 26
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "No campaign params defined in Install Referrer result"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v13, "click_timestamp"

    if-eqz v12, :cond_5

    const-string v12, "gclid"

    .line 29
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "gbraid"

    .line 30
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_4
    const-string v12, "referrer_click_timestamp_server_seconds"

    .line 31
    invoke-virtual {v3, v12, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    mul-long/2addr v14, v10

    cmp-long v3, v14, v6

    if-lez v3, :cond_8

    .line 33
    invoke-virtual {v5, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_5
    const-string v12, "medium"

    .line 35
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v14, "(not set)"

    .line 37
    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "organic"

    .line 38
    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const/16 v16, 0x1

    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_8

    const-string v12, "referrer_click_timestamp_seconds"

    .line 40
    invoke-virtual {v3, v12, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    mul-long/2addr v14, v10

    cmp-long v3, v14, v6

    if-nez v3, :cond_7

    .line 42
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Install Referrer is missing click timestamp for ad campaign"

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto :goto_4

    .line 47
    :cond_7
    invoke-virtual {v5, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    :cond_8
    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzha;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-nez v3, :cond_9

    .line 50
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from module while it may have already been logged."

    .line 53
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 54
    :cond_9
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 55
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzha;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 57
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from gmscore with "

    const-string v7, "referrer API v2"

    .line 60
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "_cis"

    .line 61
    invoke-virtual {v5, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzp()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v3

    const-string v6, "auto"

    const-string v7, "_cmp"

    .line 64
    invoke-virtual {v3, v6, v7, v5, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_a
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "No referrer defined in Install Referrer response"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 66
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_c
    return-void
.end method
