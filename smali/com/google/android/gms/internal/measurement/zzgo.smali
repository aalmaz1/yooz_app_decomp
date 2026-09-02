.class public final Lcom/google/android/gms/internal/measurement/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgq;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzgt;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 4
    :try_start_8
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_4e
    .catchall {:try_start_8 .. :try_end_18} :catchall_4c

    if-eqz p2, :cond_39

    .line 7
    :try_start_1a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 8
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_37

    if-eqz p2, :cond_29

    .line 9
    :try_start_26
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_4e
    .catchall {:try_start_26 .. :try_end_29} :catchall_4c

    .line 10
    :cond_29
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :cond_2d
    if-eqz p2, :cond_32

    .line 13
    :try_start_2f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_4e
    .catchall {:try_start_2f .. :try_end_32} :catchall_4c

    .line 14
    :cond_32
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 p1, 0x0

    return-object p1

    :catchall_37
    move-exception v0

    goto :goto_41

    .line 6
    :cond_39
    :try_start_39
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string v1, "ContentProvider query returned null cursor"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_37

    :goto_41
    if-eqz p2, :cond_4b

    .line 16
    :try_start_43
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p2

    :try_start_48
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw v0
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4c} :catch_4e
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p2

    goto :goto_57

    :catch_4e
    move-exception p2

    .line 18
    :try_start_4f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string v1, "ContentProvider query failed"

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_4c

    .line 19
    :goto_57
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 20
    throw p2

    .line 3
    :cond_5b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string p2, "Unable to acquire ContentProviderClient"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgr;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzgr<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzgt;
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Landroid/net/Uri;

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 25
    :try_start_8
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_5f
    .catchall {:try_start_8 .. :try_end_13} :catchall_5d

    if-eqz p2, :cond_4a

    .line 28
    :try_start_15
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/measurement/zzgr;->zza(I)Ljava/util/Map;

    move-result-object p3

    .line 29
    :goto_1d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 30
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 31
    :cond_31
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_48

    if-eqz v0, :cond_40

    if-eqz p2, :cond_3c

    .line 34
    :try_start_39
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_5f
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5d

    .line 35
    :cond_3c
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    return-object p3

    .line 32
    :cond_40
    :try_start_40
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string v0, "Cursor read incomplete (ContentProvider dead?)"

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;)V

    throw p3

    :catchall_48
    move-exception p3

    goto :goto_52

    .line 27
    :cond_4a
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string v0, "ContentProvider query returned null cursor"

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_48

    :goto_52
    if-eqz p2, :cond_5c

    .line 37
    :try_start_54
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p2

    :try_start_59
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw p3
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5d} :catch_5f
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p2

    goto :goto_68

    :catch_5f
    move-exception p2

    .line 39
    :try_start_60
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string v0, "ContentProvider query failed"

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_5d

    .line 40
    :goto_68
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 41
    throw p2

    .line 24
    :cond_6c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgt;

    const-string p2, "Unable to acquire ContentProviderClient"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgt;-><init>(Ljava/lang/String;)V

    throw p1
.end method
