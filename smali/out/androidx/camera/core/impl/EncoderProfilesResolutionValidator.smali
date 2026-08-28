.class public Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;
.super Ljava/lang/Object;
.source "EncoderProfilesResolutionValidator.java"


# instance fields
.field private final mQuirks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedResolutions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->mQuirks:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_f
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->generateSupportedResolutions(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->mSupportedResolutions:Ljava/util/Set;

    return-void
.end method

.method private generateSupportedResolutions(Ljava/util/List;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_31

    .line 59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    .line 63
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;

    invoke-interface {v1}, Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;->getSupportedResolutions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    .line 64
    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;

    invoke-interface {v2}, Landroidx/camera/core/impl/quirk/ProfileResolutionQuirk;->getSupportedResolutions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_30
    return-object v0

    .line 60
    :cond_31
    :goto_31
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public filterInvalidVideoResolution(Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 106
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->hasQuirk()Z

    move-result v1

    if-nez v1, :cond_b

    return-object p1

    .line 110
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 112
    new-instance v4, Landroid/util/Size;

    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 113
    iget-object v5, p0, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->mSupportedResolutions:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 114
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 118
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_54

    .line 119
    :cond_44
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result v0

    .line 120
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v2

    .line 121
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-static {v0, v2, p1, v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object v0

    :goto_54
    return-object v0
.end method

.method public hasQuirk()Z
    .registers 2

    .line 73
    iget-object v0, p0, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->mQuirks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasValidVideoResolution(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 82
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->hasQuirk()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    .line 83
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 87
    :cond_15
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 88
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/util/Size;-><init>(II)V

    .line 89
    iget-object v1, p0, Landroidx/camera/core/impl/EncoderProfilesResolutionValidator;->mSupportedResolutions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v0, v2

    :cond_3f
    return v0
.end method
