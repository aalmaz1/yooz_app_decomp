.class public final enum Lfr/w3blog/zpl/constant/ZebraPPP;
.super Ljava/lang/Enum;
.source "ZebraPPP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/w3blog/zpl/constant/ZebraPPP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/w3blog/zpl/constant/ZebraPPP;

.field public static final enum DPI_203:Lfr/w3blog/zpl/constant/ZebraPPP;

.field public static final enum DPI_300:Lfr/w3blog/zpl/constant/ZebraPPP;

.field public static final enum DPI_600:Lfr/w3blog/zpl/constant/ZebraPPP;


# instance fields
.field private dotByMm:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 11
    new-instance v0, Lfr/w3blog/zpl/constant/ZebraPPP;

    const/high16 v1, 0x41000000    # 8.0f

    const-string v2, "DPI_203"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lfr/w3blog/zpl/constant/ZebraPPP;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lfr/w3blog/zpl/constant/ZebraPPP;->DPI_203:Lfr/w3blog/zpl/constant/ZebraPPP;

    new-instance v1, Lfr/w3blog/zpl/constant/ZebraPPP;

    const/high16 v2, 0x41400000    # 12.0f

    const-string v4, "DPI_300"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lfr/w3blog/zpl/constant/ZebraPPP;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lfr/w3blog/zpl/constant/ZebraPPP;->DPI_300:Lfr/w3blog/zpl/constant/ZebraPPP;

    new-instance v2, Lfr/w3blog/zpl/constant/ZebraPPP;

    const/high16 v4, 0x41bc0000    # 23.5f

    const-string v6, "DPI_600"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lfr/w3blog/zpl/constant/ZebraPPP;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lfr/w3blog/zpl/constant/ZebraPPP;->DPI_600:Lfr/w3blog/zpl/constant/ZebraPPP;

    const/4 v4, 0x3

    new-array v4, v4, [Lfr/w3blog/zpl/constant/ZebraPPP;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 9
    sput-object v4, Lfr/w3blog/zpl/constant/ZebraPPP;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraPPP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lfr/w3blog/zpl/constant/ZebraPPP;->dotByMm:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/w3blog/zpl/constant/ZebraPPP;
    .registers 2

    .line 9
    const-class v0, Lfr/w3blog/zpl/constant/ZebraPPP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/w3blog/zpl/constant/ZebraPPP;

    return-object p0
.end method

.method public static values()[Lfr/w3blog/zpl/constant/ZebraPPP;
    .registers 1

    .line 9
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPPP;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraPPP;

    invoke-virtual {v0}, [Lfr/w3blog/zpl/constant/ZebraPPP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/w3blog/zpl/constant/ZebraPPP;

    return-object v0
.end method


# virtual methods
.method public getDotByMm()F
    .registers 2

    .line 23
    iget v0, p0, Lfr/w3blog/zpl/constant/ZebraPPP;->dotByMm:F

    return v0
.end method
