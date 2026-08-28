.class public final enum Lcom/otaliastudios/transcoder/common/TrackStatus;
.super Ljava/lang/Enum;
.source "TrackStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/transcoder/common/TrackStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/transcoder/common/TrackStatus;

.field public static final enum ABSENT:Lcom/otaliastudios/transcoder/common/TrackStatus;

.field public static final enum COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

.field public static final enum PASS_THROUGH:Lcom/otaliastudios/transcoder/common/TrackStatus;

.field public static final enum REMOVING:Lcom/otaliastudios/transcoder/common/TrackStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 10
    new-instance v0, Lcom/otaliastudios/transcoder/common/TrackStatus;

    const-string v1, "ABSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/transcoder/common/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->ABSENT:Lcom/otaliastudios/transcoder/common/TrackStatus;

    .line 15
    new-instance v1, Lcom/otaliastudios/transcoder/common/TrackStatus;

    const-string v3, "REMOVING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/otaliastudios/transcoder/common/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/otaliastudios/transcoder/common/TrackStatus;->REMOVING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    .line 20
    new-instance v3, Lcom/otaliastudios/transcoder/common/TrackStatus;

    const-string v5, "PASS_THROUGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/otaliastudios/transcoder/common/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/otaliastudios/transcoder/common/TrackStatus;->PASS_THROUGH:Lcom/otaliastudios/transcoder/common/TrackStatus;

    .line 25
    new-instance v5, Lcom/otaliastudios/transcoder/common/TrackStatus;

    const-string v7, "COMPRESSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/otaliastudios/transcoder/common/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/otaliastudios/transcoder/common/TrackStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcom/otaliastudios/transcoder/common/TrackStatus;->$VALUES:[Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/transcoder/common/TrackStatus;
    .registers 2

    .line 6
    const-class v0, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/transcoder/common/TrackStatus;
    .registers 1

    .line 6
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->$VALUES:[Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v0}, [Lcom/otaliastudios/transcoder/common/TrackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-object v0
.end method


# virtual methods
.method public isTranscoding()Z
    .registers 4

    .line 36
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    goto :goto_2a

    .line 44
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected track status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return v0

    :cond_2c
    return v1
.end method
