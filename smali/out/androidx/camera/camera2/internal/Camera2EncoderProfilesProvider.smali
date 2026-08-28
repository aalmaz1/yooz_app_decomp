.class public Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;
.super Ljava/lang/Object;
.source "Camera2EncoderProfilesProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider$Api31Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2EncoderProfilesProvider"


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mEncoderProfilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/EncoderProfilesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasValidCameraId:Z

.field private final mIntCameraId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mCameraId:Ljava/lang/String;

    .line 53
    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_12

    const/4 v0, 0x1

    goto :goto_2e

    .line 56
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera id is not an integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", unable to create Camera2EncoderProfilesProvider"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2EncoderProfilesProvider"

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 p1, -0x1

    .line 59
    :goto_2e
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mHasValidCameraId:Z

    .line 60
    iput p1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    return-void
.end method

.method private createProfilesFromCamcorderProfile(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .registers 6

    const/4 v0, 0x0

    .line 126
    :try_start_1
    iget v1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    invoke-static {v1, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_1e

    :catch_8
    move-exception v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get CamcorderProfile by quality: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Camera2EncoderProfilesProvider"

    invoke-static {v2, p1, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_1e
    if-eqz p1, :cond_24

    .line 133
    invoke-static {p1}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->from(Landroid/media/CamcorderProfile;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .registers 5

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_30

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider$Api31Impl;->getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_10
    const-class v1, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;

    invoke-static {v1}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    const-string v2, "Camera2EncoderProfilesProvider"

    if-eqz v1, :cond_25

    const-string v0, "EncoderProfiles contains invalid video profiles, use CamcorderProfile to create EncoderProfilesProxy."

    .line 106
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 110
    :cond_25
    :try_start_25
    invoke-static {v0}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->from(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception v0

    const-string v1, "Failed to create EncoderProfilesProxy, EncoderProfiles might  contain invalid video profiles. Use CamcorderProfile instead."

    .line 112
    invoke-static {v2, v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :cond_30
    :goto_30
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->createProfilesFromCamcorderProfile(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .registers 4

    .line 77
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mHasValidCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 81
    :cond_6
    iget v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-nez v0, :cond_f

    return-object v1

    .line 86
    :cond_f
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 87
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 89
    :cond_28
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 90
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hasProfile(I)Z
    .registers 3

    .line 66
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mHasValidCameraId:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_6
    iget v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->mIntCameraId:I

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    return p1
.end method
