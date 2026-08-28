.class public abstract Lcom/google/android/gms/internal/measurement/zzdm;
.super Lcom/google/android/gms/internal/measurement/zzbx;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzdj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbx;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzdj;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzdj;

    if-eqz v1, :cond_11

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdj;

    return-object v0

    .line 6
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_4e0

    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 417
    :pswitch_a
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 419
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->setSgtmDebugInfo(Landroid/content/Intent;)V

    goto/16 :goto_4da

    .line 405
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_32

    .line 408
    :cond_21
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 409
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_2d

    .line 410
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_32

    .line 411
    :cond_2d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 414
    :goto_32
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 415
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getSessionId(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 399
    :pswitch_3a
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 402
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 403
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_4da

    .line 393
    :pswitch_4e
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 396
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 397
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_4da

    .line 388
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 390
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 391
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->clearMeasurementEnabled(J)V

    goto/16 :goto_4da

    .line 383
    :pswitch_6e
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 385
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_4da

    .line 371
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_85

    goto :goto_96

    .line 374
    :cond_85
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 375
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_91

    .line 376
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_96

    .line 377
    :cond_91
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 380
    :goto_96
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 381
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 366
    :pswitch_9e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc(Landroid/os/Parcel;)Z

    move-result v1

    .line 368
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 369
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->setDataCollectionEnabled(Z)V

    goto/16 :goto_4da

    .line 353
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_b1

    goto :goto_c2

    .line 356
    :cond_b1
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 357
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_bd

    .line 358
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_c2

    .line 359
    :cond_bd
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 361
    :goto_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 364
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzdo;I)V

    goto/16 :goto_4da

    .line 348
    :pswitch_ce
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v1

    .line 350
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 351
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_4da

    .line 336
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_e1

    goto :goto_f2

    .line 339
    :cond_e1
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 340
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v3, :cond_ed

    .line 341
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdp;

    goto :goto_f2

    .line 342
    :cond_ed
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzdr;-><init>(Landroid/os/IBinder;)V

    .line 345
    :goto_f2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 346
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_4da

    .line 324
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_101

    goto :goto_112

    .line 327
    :cond_101
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 328
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v3, :cond_10d

    .line 329
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdp;

    goto :goto_112

    .line 330
    :cond_10d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzdr;-><init>(Landroid/os/IBinder;)V

    .line 333
    :goto_112
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 334
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_4da

    .line 312
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_121

    goto :goto_132

    .line 315
    :cond_121
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 316
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v3, :cond_12d

    .line 317
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdp;

    goto :goto_132

    .line 318
    :cond_12d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzdr;-><init>(Landroid/os/IBinder;)V

    .line 321
    :goto_132
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 322
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_4da

    .line 303
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 309
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzdm;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_4da

    .line 289
    :pswitch_163
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_172

    goto :goto_183

    .line 293
    :cond_172
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 294
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_17e

    .line 295
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_183

    .line 296
    :cond_17e
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 298
    :goto_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 300
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 301
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzdm;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzdo;J)V

    goto/16 :goto_4da

    .line 275
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_19e

    goto :goto_1af

    .line 279
    :cond_19e
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 280
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_1aa

    .line 281
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_1af

    .line 282
    :cond_1aa
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 284
    :goto_1af
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 286
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 287
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdo;J)V

    goto/16 :goto_4da

    .line 269
    :pswitch_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 272
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 273
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_4da

    .line 263
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 266
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 267
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_4da

    .line 257
    :pswitch_1e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 260
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 261
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_4da

    .line 250
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 251
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 254
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 255
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_4da

    .line 244
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 247
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 248
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_4da

    .line 238
    :pswitch_227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 241
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 242
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_4da

    .line 232
    :pswitch_23b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 235
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 236
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_4da

    .line 226
    :pswitch_24b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 229
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 230
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_4da

    .line 214
    :pswitch_25b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_262

    goto :goto_273

    .line 217
    :cond_262
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 218
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_26e

    .line 219
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_273

    .line 220
    :cond_26e
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 223
    :goto_273
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 224
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->generateEventId(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 202
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_282

    goto :goto_293

    .line 205
    :cond_282
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 206
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_28e

    .line 207
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_293

    .line 208
    :cond_28e
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 211
    :goto_293
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 212
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 190
    :pswitch_29b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2a2

    goto :goto_2b3

    .line 193
    :cond_2a2
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 194
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_2ae

    .line 195
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_2b3

    .line 196
    :cond_2ae
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 199
    :goto_2b3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 178
    :pswitch_2bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2c2

    goto :goto_2d3

    .line 181
    :cond_2c2
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 182
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_2ce

    .line 183
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_2d3

    .line 184
    :cond_2ce
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 187
    :goto_2d3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 166
    :pswitch_2db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2e2

    goto :goto_2f5

    :cond_2e2
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 169
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 170
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdu;

    if-eqz v3, :cond_2f0

    .line 171
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdu;

    goto :goto_2f5

    .line 172
    :cond_2f0
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdt;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Landroid/os/IBinder;)V

    .line 175
    :goto_2f5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzdu;)V

    goto/16 :goto_4da

    .line 154
    :pswitch_2fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_304

    goto :goto_315

    .line 157
    :cond_304
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 158
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_310

    .line 159
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_315

    .line 160
    :cond_310
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 163
    :goto_315
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 142
    :pswitch_31d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_324

    goto :goto_335

    .line 145
    :cond_324
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 146
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_330

    .line 147
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_335

    .line 148
    :cond_330
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 151
    :goto_335
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 134
    :pswitch_33d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 139
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzdm;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4da

    .line 129
    :pswitch_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 131
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->setSessionTimeoutDuration(J)V

    goto/16 :goto_4da

    .line 124
    :pswitch_366
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 126
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 127
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->setMinimumSessionDuration(J)V

    goto/16 :goto_4da

    .line 119
    :pswitch_372
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 121
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 122
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->resetAnalyticsData(J)V

    goto/16 :goto_4da

    .line 113
    :pswitch_37e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc(Landroid/os/Parcel;)Z

    move-result v1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 116
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 117
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_4da

    .line 99
    :pswitch_38e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_39d

    goto :goto_3ae

    .line 104
    :cond_39d
    invoke-interface {v5, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 105
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_3a9

    .line 106
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_3ae

    .line 107
    :cond_3a9
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 110
    :goto_3ae
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 111
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 92
    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 96
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 97
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4da

    .line 86
    :pswitch_3ce
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_4da

    .line 80
    :pswitch_3e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 83
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_4da

    .line 67
    :pswitch_3f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_3fd

    goto :goto_40e

    .line 71
    :cond_3fd
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 72
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_409

    .line 73
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_40e

    .line 74
    :cond_409
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 77
    :goto_40e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 78
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 52
    :pswitch_416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc(Landroid/os/Parcel;)Z

    move-result v5

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_429

    goto :goto_43a

    .line 58
    :cond_429
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 59
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_435

    .line 60
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_43a

    .line 61
    :cond_435
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    .line 64
    :goto_43a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 65
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzdo;)V

    goto/16 :goto_4da

    .line 43
    :pswitch_442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc(Landroid/os/Parcel;)Z

    move-result v4

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzdm;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_4da

    .line 27
    :pswitch_463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 29
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_47b

    move-object v6, v3

    goto :goto_48c

    .line 33
    :cond_47b
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 34
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzdo;

    if-eqz v3, :cond_486

    .line 35
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdo;

    goto :goto_48b

    .line 36
    :cond_486
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Landroid/os/IBinder;)V

    :goto_48b
    move-object v6, v2

    .line 38
    :goto_48c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    .line 41
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzdm;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzdo;J)V

    goto :goto_4da

    .line 17
    :pswitch_49c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc(Landroid/os/Parcel;)Z

    move-result v4

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc(Landroid/os/Parcel;)Z

    move-result v5

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzdm;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_4da

    .line 10
    :pswitch_4c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzdw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdw;

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb(Landroid/os/Parcel;)V

    .line 15
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdm;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdw;J)V

    .line 423
    :goto_4da
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_4e0
    .packed-switch 0x1
        :pswitch_4c0
        :pswitch_49c
        :pswitch_463
        :pswitch_442
        :pswitch_416
        :pswitch_3f2
        :pswitch_3e2
        :pswitch_3ce
        :pswitch_3b6
        :pswitch_38e
        :pswitch_37e
        :pswitch_372
        :pswitch_366
        :pswitch_35a
        :pswitch_33d
        :pswitch_31d
        :pswitch_2fd
        :pswitch_2db
        :pswitch_2bb
        :pswitch_29b
        :pswitch_27b
        :pswitch_25b
        :pswitch_24b
        :pswitch_23b
        :pswitch_227
        :pswitch_213
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_1cf
        :pswitch_1bb
        :pswitch_18f
        :pswitch_163
        :pswitch_13a
        :pswitch_11a
        :pswitch_fa
        :pswitch_da
        :pswitch_ce
        :pswitch_aa
        :pswitch_9e
        :pswitch_7e
        :pswitch_8
        :pswitch_6e
        :pswitch_62
        :pswitch_4e
        :pswitch_3a
        :pswitch_1a
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
