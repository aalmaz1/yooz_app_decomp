.class public final enum Lfr/w3blog/zpl/constant/ZebraRotation;
.super Ljava/lang/Enum;
.source "ZebraRotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/w3blog/zpl/constant/ZebraRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/w3blog/zpl/constant/ZebraRotation;

.field public static final enum INVERTED:Lfr/w3blog/zpl/constant/ZebraRotation;

.field public static final enum NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

.field public static final enum READ_FROM_BOTTOM:Lfr/w3blog/zpl/constant/ZebraRotation;

.field public static final enum ROTATE_90:Lfr/w3blog/zpl/constant/ZebraRotation;


# instance fields
.field letter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lfr/w3blog/zpl/constant/ZebraRotation;

    const-string v1, "N"

    const-string v2, "NORMAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lfr/w3blog/zpl/constant/ZebraRotation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    new-instance v1, Lfr/w3blog/zpl/constant/ZebraRotation;

    const-string v2, "R"

    const-string v4, "ROTATE_90"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lfr/w3blog/zpl/constant/ZebraRotation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfr/w3blog/zpl/constant/ZebraRotation;->ROTATE_90:Lfr/w3blog/zpl/constant/ZebraRotation;

    new-instance v2, Lfr/w3blog/zpl/constant/ZebraRotation;

    const-string v4, "I"

    const-string v6, "INVERTED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lfr/w3blog/zpl/constant/ZebraRotation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lfr/w3blog/zpl/constant/ZebraRotation;->INVERTED:Lfr/w3blog/zpl/constant/ZebraRotation;

    new-instance v4, Lfr/w3blog/zpl/constant/ZebraRotation;

    const-string v6, "B"

    const-string v8, "READ_FROM_BOTTOM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lfr/w3blog/zpl/constant/ZebraRotation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lfr/w3blog/zpl/constant/ZebraRotation;->READ_FROM_BOTTOM:Lfr/w3blog/zpl/constant/ZebraRotation;

    const/4 v6, 0x4

    new-array v6, v6, [Lfr/w3blog/zpl/constant/ZebraRotation;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    .line 3
    sput-object v6, Lfr/w3blog/zpl/constant/ZebraRotation;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraRotation;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lfr/w3blog/zpl/constant/ZebraRotation;->letter:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/w3blog/zpl/constant/ZebraRotation;
    .locals 1

    .line 3
    const-class v0, Lfr/w3blog/zpl/constant/ZebraRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/w3blog/zpl/constant/ZebraRotation;

    return-object p0
.end method

.method public static values()[Lfr/w3blog/zpl/constant/ZebraRotation;
    .locals 1

    .line 3
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraRotation;

    invoke-virtual {v0}, [Lfr/w3blog/zpl/constant/ZebraRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/w3blog/zpl/constant/ZebraRotation;

    return-object v0
.end method


# virtual methods
.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lfr/w3blog/zpl/constant/ZebraRotation;->letter:Ljava/lang/String;

    return-object v0
.end method
