.class public Landroidx/media3/common/PlaybackException;
.super Ljava/lang/Exception;
.source "PlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/PlaybackException$ErrorCode;
    }
.end annotation


# static fields
.field public static final CUSTOM_ERROR_CODE_BASE:I = 0xf4240

.field public static final ERROR_CODE_AUDIO_TRACK_INIT_FAILED:I = 0x1389

.field public static final ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED:I = 0x138c

.field public static final ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED:I = 0x138b

.field public static final ERROR_CODE_AUDIO_TRACK_WRITE_FAILED:I = 0x138a

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = -0x66

.field public static final ERROR_CODE_BAD_VALUE:I = -0x3

.field public static final ERROR_CODE_BEHIND_LIVE_WINDOW:I = 0x3ea

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = -0x68

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = -0x6e

.field public static final ERROR_CODE_DECODER_INIT_FAILED:I = 0xfa1

.field public static final ERROR_CODE_DECODER_QUERY_FAILED:I = 0xfa2

.field public static final ERROR_CODE_DECODING_FAILED:I = 0xfa3

.field public static final ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES:I = 0xfa4

.field public static final ERROR_CODE_DECODING_FORMAT_UNSUPPORTED:I = 0xfa5

.field public static final ERROR_CODE_DECODING_RESOURCES_RECLAIMED:I = 0xfa6

.field public static final ERROR_CODE_DISCONNECTED:I = -0x64

.field public static final ERROR_CODE_DRM_CONTENT_ERROR:I = 0x1773

.field public static final ERROR_CODE_DRM_DEVICE_REVOKED:I = 0x1777

.field public static final ERROR_CODE_DRM_DISALLOWED_OPERATION:I = 0x1775

.field public static final ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED:I = 0x1774

.field public static final ERROR_CODE_DRM_LICENSE_EXPIRED:I = 0x1778

.field public static final ERROR_CODE_DRM_PROVISIONING_FAILED:I = 0x1772

.field public static final ERROR_CODE_DRM_SCHEME_UNSUPPORTED:I = 0x1771

.field public static final ERROR_CODE_DRM_SYSTEM_ERROR:I = 0x1776

.field public static final ERROR_CODE_DRM_UNSPECIFIED:I = 0x1770

.field public static final ERROR_CODE_END_OF_PLAYLIST:I = -0x6d

.field public static final ERROR_CODE_FAILED_RUNTIME_CHECK:I = 0x3ec

.field public static final ERROR_CODE_INVALID_STATE:I = -0x2

.field public static final ERROR_CODE_IO_BAD_HTTP_STATUS:I = 0x7d4

.field public static final ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED:I = 0x7d7

.field public static final ERROR_CODE_IO_FILE_NOT_FOUND:I = 0x7d5

.field public static final ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE:I = 0x7d3

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_FAILED:I = 0x7d1

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT:I = 0x7d2

.field public static final ERROR_CODE_IO_NO_PERMISSION:I = 0x7d6

.field public static final ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE:I = 0x7d8

.field public static final ERROR_CODE_IO_UNSPECIFIED:I = 0x7d0

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = -0x6a

.field public static final ERROR_CODE_NOT_SUPPORTED:I = -0x6

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = -0x69

.field public static final ERROR_CODE_PARSING_CONTAINER_MALFORMED:I = 0xbb9

.field public static final ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED:I = 0xbbb

.field public static final ERROR_CODE_PARSING_MANIFEST_MALFORMED:I = 0xbba

.field public static final ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED:I = 0xbbc

.field public static final ERROR_CODE_PERMISSION_DENIED:I = -0x4

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = -0x67

.field public static final ERROR_CODE_REMOTE_ERROR:I = 0x3e9

.field public static final ERROR_CODE_SETUP_REQUIRED:I = -0x6c

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = -0x6b

.field public static final ERROR_CODE_TIMEOUT:I = 0x3eb

.field public static final ERROR_CODE_UNSPECIFIED:I = 0x3e8

.field public static final ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED:I = 0x1b59

.field public static final ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED:I = 0x1b58

.field private static final FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

.field protected static final FIELD_CUSTOM_ID_BASE:I = 0x3e8

.field private static final FIELD_INT_ERROR_CODE:Ljava/lang/String;

.field private static final FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

.field private static final FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

.field private static final FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

.field private static final FIELD_STRING_MESSAGE:Ljava/lang/String;


# instance fields
.field public final errorCode:I

.field public final extras:Landroid/os/Bundle;

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 570
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 571
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 572
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 573
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    .line 574
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 575
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .registers 10

    .line 514
    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    .line 515
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-static {p1}, Landroidx/media3/common/PlaybackException;->getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;

    move-result-object v3

    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 517
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 519
    invoke-static {p1}, Landroidx/media3/common/PlaybackException;->getExtrasFromBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 520
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-object v1, p0

    .line 514
    invoke-direct/range {v1 .. v7}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 11

    .line 490
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;)V
    .registers 13

    .line 508
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V
    .registers 7

    .line 532
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    iput p3, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 534
    iput-object p4, p0, Landroidx/media3/common/PlaybackException;->extras:Landroid/os/Bundle;

    .line 535
    iput-wide p5, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    return-void
.end method

.method private static createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;
    .registers 2

    .line 619
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 613
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/PlaybackException;
    .registers 2

    .line 589
    new-instance v0, Landroidx/media3/common/PlaybackException;

    invoke-direct {v0, p0}, Landroidx/media3/common/PlaybackException;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;
    .registers 5

    .line 629
    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 632
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 634
    :try_start_13
    const-class v1, Landroidx/media3/common/PlaybackException;

    .line 636
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    .line 635
    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 637
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 638
    invoke-static {v0, p0}, Landroidx/media3/common/PlaybackException;->createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2d

    move-object v2, v0

    :cond_2b
    if-nez v2, :cond_31

    .line 647
    :catchall_2d
    invoke-static {p0}, Landroidx/media3/common/PlaybackException;->createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v2

    :cond_31
    return-object v2
.end method

.method public static getErrorCodeName(I)Ljava/lang/String;
    .registers 2

    const/16 v0, -0x64

    if-eq p0, v0, :cond_d4

    const/4 v0, -0x6

    if-eq p0, v0, :cond_d1

    const/4 v0, -0x4

    if-eq p0, v0, :cond_ce

    const/4 v0, -0x3

    if-eq p0, v0, :cond_cb

    const/4 v0, -0x2

    if-eq p0, v0, :cond_c8

    const/16 v0, 0x1b58

    if-eq p0, v0, :cond_c5

    const/16 v0, 0x1b59

    if-eq p0, v0, :cond_c2

    packed-switch p0, :pswitch_data_d8

    packed-switch p0, :pswitch_data_ee

    packed-switch p0, :pswitch_data_fc

    packed-switch p0, :pswitch_data_112

    packed-switch p0, :pswitch_data_11e

    packed-switch p0, :pswitch_data_12e

    packed-switch p0, :pswitch_data_13a

    const v0, 0xf4240

    if-lt p0, v0, :cond_35

    const-string p0, "custom error code"

    return-object p0

    :cond_35
    const-string p0, "invalid error code"

    return-object p0

    :pswitch_38
    const-string p0, "ERROR_CODE_DRM_LICENSE_EXPIRED"

    return-object p0

    :pswitch_3b
    const-string p0, "ERROR_CODE_DRM_DEVICE_REVOKED"

    return-object p0

    :pswitch_3e
    const-string p0, "ERROR_CODE_DRM_SYSTEM_ERROR"

    return-object p0

    :pswitch_41
    const-string p0, "ERROR_CODE_DRM_DISALLOWED_OPERATION"

    return-object p0

    :pswitch_44
    const-string p0, "ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED"

    return-object p0

    :pswitch_47
    const-string p0, "ERROR_CODE_DRM_CONTENT_ERROR"

    return-object p0

    :pswitch_4a
    const-string p0, "ERROR_CODE_DRM_PROVISIONING_FAILED"

    return-object p0

    :pswitch_4d
    const-string p0, "ERROR_CODE_DRM_SCHEME_UNSUPPORTED"

    return-object p0

    :pswitch_50
    const-string p0, "ERROR_CODE_DRM_UNSPECIFIED"

    return-object p0

    :pswitch_53
    const-string p0, "ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED"

    return-object p0

    :pswitch_56
    const-string p0, "ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED"

    return-object p0

    :pswitch_59
    const-string p0, "ERROR_CODE_AUDIO_TRACK_WRITE_FAILED"

    return-object p0

    :pswitch_5c
    const-string p0, "ERROR_CODE_AUDIO_TRACK_INIT_FAILED"

    return-object p0

    :pswitch_5f
    const-string p0, "ERROR_CODE_DECODING_RESOURCES_RECLAIMED"

    return-object p0

    :pswitch_62
    const-string p0, "ERROR_CODE_DECODING_FORMAT_UNSUPPORTED"

    return-object p0

    :pswitch_65
    const-string p0, "ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES"

    return-object p0

    :pswitch_68
    const-string p0, "ERROR_CODE_DECODING_FAILED"

    return-object p0

    :pswitch_6b
    const-string p0, "ERROR_CODE_DECODER_QUERY_FAILED"

    return-object p0

    :pswitch_6e
    const-string p0, "ERROR_CODE_DECODER_INIT_FAILED"

    return-object p0

    :pswitch_71
    const-string p0, "ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED"

    return-object p0

    :pswitch_74
    const-string p0, "ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED"

    return-object p0

    :pswitch_77
    const-string p0, "ERROR_CODE_PARSING_MANIFEST_MALFORMED"

    return-object p0

    :pswitch_7a
    const-string p0, "ERROR_CODE_PARSING_CONTAINER_MALFORMED"

    return-object p0

    :pswitch_7d
    const-string p0, "ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE"

    return-object p0

    :pswitch_80
    const-string p0, "ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED"

    return-object p0

    :pswitch_83
    const-string p0, "ERROR_CODE_IO_NO_PERMISSION"

    return-object p0

    :pswitch_86
    const-string p0, "ERROR_CODE_IO_FILE_NOT_FOUND"

    return-object p0

    :pswitch_89
    const-string p0, "ERROR_CODE_IO_BAD_HTTP_STATUS"

    return-object p0

    :pswitch_8c
    const-string p0, "ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE"

    return-object p0

    :pswitch_8f
    const-string p0, "ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT"

    return-object p0

    :pswitch_92
    const-string p0, "ERROR_CODE_IO_NETWORK_CONNECTION_FAILED"

    return-object p0

    :pswitch_95
    const-string p0, "ERROR_CODE_IO_UNSPECIFIED"

    return-object p0

    :pswitch_98
    const-string p0, "ERROR_CODE_FAILED_RUNTIME_CHECK"

    return-object p0

    :pswitch_9b
    const-string p0, "ERROR_CODE_TIMEOUT"

    return-object p0

    :pswitch_9e
    const-string p0, "ERROR_CODE_BEHIND_LIVE_WINDOW"

    return-object p0

    :pswitch_a1
    const-string p0, "ERROR_CODE_REMOTE_ERROR"

    return-object p0

    :pswitch_a4
    const-string p0, "ERROR_CODE_UNSPECIFIED"

    return-object p0

    :pswitch_a7
    const-string p0, "ERROR_CODE_AUTHENTICATION_EXPIRED"

    return-object p0

    :pswitch_aa
    const-string p0, "ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED"

    return-object p0

    :pswitch_ad
    const-string p0, "ERROR_CODE_CONCURRENT_STREAM_LIMIT"

    return-object p0

    :pswitch_b0
    const-string p0, "ERROR_CODE_PARENTAL_CONTROL_RESTRICTED"

    return-object p0

    :pswitch_b3
    const-string p0, "ERROR_CODE_NOT_AVAILABLE_IN_REGION"

    return-object p0

    :pswitch_b6
    const-string p0, "ERROR_CODE_SKIP_LIMIT_REACHED"

    return-object p0

    :pswitch_b9
    const-string p0, "ERROR_CODE_SETUP_REQUIRED"

    return-object p0

    :pswitch_bc
    const-string p0, "ERROR_CODE_END_OF_PLAYLIST"

    return-object p0

    :pswitch_bf
    const-string p0, "ERROR_CODE_CONTENT_ALREADY_PLAYING"

    return-object p0

    :cond_c2
    const-string p0, "ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED"

    return-object p0

    :cond_c5
    const-string p0, "ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED"

    return-object p0

    :cond_c8
    const-string p0, "ERROR_CODE_INVALID_STATE"

    return-object p0

    :cond_cb
    const-string p0, "ERROR_CODE_BAD_VALUE"

    return-object p0

    :cond_ce
    const-string p0, "ERROR_CODE_PERMISSION_DENIED"

    return-object p0

    :cond_d1
    const-string p0, "ERROR_CODE_NOT_SUPPORTED"

    return-object p0

    :cond_d4
    const-string p0, "ERROR_CODE_DISCONNECTED"

    return-object p0

    nop

    :pswitch_data_d8
    .packed-switch -0x6e
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x3e8
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x7d0
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0xbb9
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0xfa1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x1389
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x1770
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
    .end packed-switch
.end method

.method private static getExtrasFromBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 623
    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_9

    goto :goto_b

    .line 624
    :cond_9
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_b
    return-object p0
.end method


# virtual methods
.method public errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_60

    .line 549
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_60

    .line 553
    :cond_12
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 554
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v2, :cond_3c

    if-eqz v3, :cond_3c

    .line 556
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    return v1

    .line 559
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    return v1

    :cond_3c
    if-nez v2, :cond_60

    if-eqz v3, :cond_41

    goto :goto_60

    .line 565
    :cond_41
    iget v2, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    iget v3, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    if-ne v2, v3, :cond_5e

    .line 566
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-wide v2, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    iget-wide v4, p1, Landroidx/media3/common/PlaybackException;->timestampMs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v1

    :goto_5f
    return v0

    :cond_60
    :goto_60
    return v1
.end method

.method public final getErrorCodeName()Ljava/lang/String;
    .registers 2

    .line 467
    iget v0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v0}, Landroidx/media3/common/PlaybackException;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 599
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/PlaybackException;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 601
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 603
    sget-object v2, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    sget-object v2, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-object v0
.end method
