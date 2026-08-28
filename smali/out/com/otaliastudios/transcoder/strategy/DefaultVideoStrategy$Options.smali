.class public Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;
.super Ljava/lang/Object;
.source "DefaultVideoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private resizer:Lcom/otaliastudios/transcoder/resize/Resizer;

.field private targetBitRate:J

.field private targetFrameRate:I

.field private targetKeyFrameInterval:F

.field private targetMimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$1;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)Lcom/otaliastudios/transcoder/resize/Resizer;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->resizer:Lcom/otaliastudios/transcoder/resize/Resizer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;Lcom/otaliastudios/transcoder/resize/Resizer;)Lcom/otaliastudios/transcoder/resize/Resizer;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->resizer:Lcom/otaliastudios/transcoder/resize/Resizer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetFrameRate:I

    return p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetFrameRate:I

    return p1
.end method

.method static synthetic access$300(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetBitRate:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;J)J
    .registers 3

    .line 43
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetBitRate:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)F
    .registers 1

    .line 43
    iget p0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetKeyFrameInterval:F

    return p0
.end method

.method static synthetic access$402(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;F)F
    .registers 2

    .line 43
    iput p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetKeyFrameInterval:F

    return p1
.end method

.method static synthetic access$500(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p1
.end method
