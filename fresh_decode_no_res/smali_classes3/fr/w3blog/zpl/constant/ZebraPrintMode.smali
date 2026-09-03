.class public final enum Lfr/w3blog/zpl/constant/ZebraPrintMode;
.super Ljava/lang/Enum;
.source "ZebraPrintMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/w3blog/zpl/constant/ZebraPrintMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/w3blog/zpl/constant/ZebraPrintMode;

.field public static final enum CUTTER:Lfr/w3blog/zpl/constant/ZebraPrintMode;

.field public static final enum PEEL_OFF_NOSELECT:Lfr/w3blog/zpl/constant/ZebraPrintMode;

.field public static final enum PEEL_OFF_SELECT:Lfr/w3blog/zpl/constant/ZebraPrintMode;

.field public static final enum REWIND:Lfr/w3blog/zpl/constant/ZebraPrintMode;

.field public static final enum TEAR_OFF:Lfr/w3blog/zpl/constant/ZebraPrintMode;


# instance fields
.field desiredMode:Ljava/lang/String;

.field prePeelSelect:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 13
    new-instance v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    const-string v1, "T"

    const-string v2, "TEAR_OFF"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lfr/w3blog/zpl/constant/ZebraPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->TEAR_OFF:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    new-instance v1, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    const-string v2, "R"

    const-string v4, "REWIND"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lfr/w3blog/zpl/constant/ZebraPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfr/w3blog/zpl/constant/ZebraPrintMode;->REWIND:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    new-instance v2, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    const-string v4, "PEEL_OFF_SELECT"

    const/4 v6, 0x2

    const-string v7, "P"

    invoke-direct {v2, v4, v6, v7, v5}, Lfr/w3blog/zpl/constant/ZebraPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lfr/w3blog/zpl/constant/ZebraPrintMode;->PEEL_OFF_SELECT:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    new-instance v4, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    const-string v8, "PEEL_OFF_NOSELECT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v7, v3}, Lfr/w3blog/zpl/constant/ZebraPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lfr/w3blog/zpl/constant/ZebraPrintMode;->PEEL_OFF_NOSELECT:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    new-instance v7, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    const-string v8, "C"

    const-string v10, "CUTTER"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lfr/w3blog/zpl/constant/ZebraPrintMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lfr/w3blog/zpl/constant/ZebraPrintMode;->CUTTER:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    const/4 v8, 0x5

    new-array v8, v8, [Lfr/w3blog/zpl/constant/ZebraPrintMode;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v6

    aput-object v4, v8, v9

    aput-object v7, v8, v11

    .line 11
    sput-object v8, Lfr/w3blog/zpl/constant/ZebraPrintMode;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraPrintMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->desiredMode:Ljava/lang/String;

    const-string p1, ""

    .line 20
    iput-object p1, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->prePeelSelect:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->desiredMode:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p1, ",Y"

    .line 26
    iput-object p1, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->prePeelSelect:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ",N"

    .line 28
    iput-object p1, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->prePeelSelect:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/w3blog/zpl/constant/ZebraPrintMode;
    .locals 1

    .line 11
    const-class v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;

    return-object p0
.end method

.method public static values()[Lfr/w3blog/zpl/constant/ZebraPrintMode;
    .locals 1

    .line 11
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraPrintMode;

    invoke-virtual {v0}, [Lfr/w3blog/zpl/constant/ZebraPrintMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/w3blog/zpl/constant/ZebraPrintMode;

    return-object v0
.end method


# virtual methods
.method public getDesiredMode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->desiredMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPrePeelSelect()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->prePeelSelect:Ljava/lang/String;

    return-object v0
.end method

.method public getZplCode()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^MM"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->desiredMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->prePeelSelect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
