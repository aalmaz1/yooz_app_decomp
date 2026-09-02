.class final Landroidx/media3/exoplayer/rtsp/SessionDescription;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    }
.end annotation


# static fields
.field public static final ATTR_CONTROL:Ljava/lang/String; = "control"

.field public static final ATTR_FMTP:Ljava/lang/String; = "fmtp"

.field public static final ATTR_LENGTH:Ljava/lang/String; = "length"

.field public static final ATTR_RANGE:Ljava/lang/String; = "range"

.field public static final ATTR_RTPMAP:Ljava/lang/String; = "rtpmap"

.field public static final ATTR_TOOL:Ljava/lang/String; = "tool"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final SUPPORTED_SDP_VERSION:Ljava/lang/String; = "0"


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;

.field public final emailAddress:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaDescriptionList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final origin:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final sessionInfo:Ljava/lang/String;

.field public final sessionName:Ljava/lang/String;

.field public final timing:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)V
    .registers 3

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$100(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 289
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    .line 290
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    .line 291
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    .line 292
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    .line 293
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    .line 294
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    .line 295
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    .line 296
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$900(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$1000(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$1100(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$1200(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;Landroidx/media3/exoplayer/rtsp/SessionDescription$1;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription;-><init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_8c

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_8c

    .line 310
    :cond_13
    check-cast p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;

    .line 311
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    if-ne v2, v3, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 312
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    .line 313
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    .line 314
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    .line 315
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    .line 316
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    .line 317
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    .line 318
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    .line 319
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    .line 320
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    .line 321
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    .line 322
    invoke-static {v2, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    goto :goto_8b

    :cond_8a
    move v0, v1

    :goto_8b
    return v0

    :cond_8c
    :goto_8c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 328
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    move v0, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    if-nez v0, :cond_28

    move v0, v2

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    if-nez v0, :cond_35

    move v0, v2

    goto :goto_39

    :cond_35
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_39
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    if-nez v0, :cond_47

    move v0, v2

    goto :goto_4b

    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4b
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    if-nez v0, :cond_54

    move v0, v2

    goto :goto_58

    :cond_54
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_58
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 336
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    if-nez v0, :cond_61

    move v0, v2

    goto :goto_65

    :cond_61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_65
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 337
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_6e

    move v0, v2

    goto :goto_72

    :cond_6e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_72
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 338
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    if-nez v0, :cond_7b

    move v0, v2

    goto :goto_7f

    :cond_7b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    if-nez v0, :cond_87

    goto :goto_8b

    :cond_87
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8b
    add-int/2addr v1, v2

    return v1
.end method
