.class public final Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;
.super Ljava/lang/Object;
.source "ProgramInformation.java"


# instance fields
.field public final copyright:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final moreInformationURL:Ljava/lang/String;

.field public final source:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 58
    :cond_4
    instance-of v1, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 61
    :cond_a
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    .line 62
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 63
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 64
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 65
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 66
    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 72
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 75
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 76
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3f
    add-int/2addr v2, v1

    return v2
.end method
