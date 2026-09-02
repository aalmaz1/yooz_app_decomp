.class public Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
.super Ljava/lang/Object;
.source "DefaultVideoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

.field private targetBitRate:J

.field private targetFrameRate:I

.field private targetKeyFrameInterval:F

.field private targetMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/otaliastudios/transcoder/resize/MultiResizer;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/resize/MultiResizer;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    const/16 v0, 0x1e

    .line 121
    iput v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 122
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    const/high16 v0, 0x40400000    # 3.0f

    .line 123
    iput v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    const-string v0, "video/avc"

    .line 124
    iput-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/resize/Resizer;)V
    .registers 5

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/otaliastudios/transcoder/resize/MultiResizer;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/resize/MultiResizer;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    const/16 v1, 0x1e

    .line 121
    iput v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 122
    iput-wide v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    const/high16 v1, 0x40400000    # 3.0f

    .line 123
    iput v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    const-string v1, "video/avc"

    .line 124
    iput-object v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/resize/MultiResizer;->addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-void
.end method


# virtual methods
.method public addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/resize/MultiResizer;->addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-object p0
.end method

.method public bitRate(J)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .registers 3

    .line 156
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    return-object p0
.end method

.method public build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;
    .registers 3

    .line 205
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->options()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;-><init>(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)V

    return-object v0
.end method

.method public frameRate(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .registers 2

    .line 168
    iput p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    return-object p0
.end method

.method public keyFrameInterval(F)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .registers 2

    .line 180
    iput p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public options()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;
    .registers 4

    .line 194
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;-><init>(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$1;)V

    .line 195
    iget-object v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$102(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;Lcom/otaliastudios/transcoder/resize/Resizer;)Lcom/otaliastudios/transcoder/resize/Resizer;

    .line 196
    iget v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$202(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;I)I

    .line 197
    iget-wide v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    invoke-static {v0, v1, v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$302(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;J)J

    .line 198
    iget v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$402(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;F)F

    .line 199
    iget-object v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$502(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
