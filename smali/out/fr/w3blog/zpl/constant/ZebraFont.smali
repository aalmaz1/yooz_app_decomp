.class public final enum Lfr/w3blog/zpl/constant/ZebraFont;
.super Ljava/lang/Enum;
.source "ZebraFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/w3blog/zpl/constant/ZebraFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_A:Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_B:Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_C:Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_D:Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_F:Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_G:Lfr/w3blog/zpl/constant/ZebraFont;

.field public static final enum ZEBRA_ZERO:Lfr/w3blog/zpl/constant/ZebraFont;


# instance fields
.field letter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 5
    new-instance v0, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v1, "0"

    const-string v2, "ZEBRA_ZERO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_ZERO:Lfr/w3blog/zpl/constant/ZebraFont;

    new-instance v1, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v2, "A"

    const-string v4, "ZEBRA_A"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_A:Lfr/w3blog/zpl/constant/ZebraFont;

    new-instance v2, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v4, "B"

    const-string v6, "ZEBRA_B"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_B:Lfr/w3blog/zpl/constant/ZebraFont;

    new-instance v4, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v6, "C"

    const-string v8, "ZEBRA_C"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_C:Lfr/w3blog/zpl/constant/ZebraFont;

    new-instance v6, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v8, "D"

    const-string v10, "ZEBRA_D"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_D:Lfr/w3blog/zpl/constant/ZebraFont;

    new-instance v8, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v10, "F"

    const-string v12, "ZEBRA_F"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_F:Lfr/w3blog/zpl/constant/ZebraFont;

    new-instance v10, Lfr/w3blog/zpl/constant/ZebraFont;

    const-string v12, "G"

    const-string v14, "ZEBRA_G"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lfr/w3blog/zpl/constant/ZebraFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_G:Lfr/w3blog/zpl/constant/ZebraFont;

    const/4 v12, 0x7

    new-array v12, v12, [Lfr/w3blog/zpl/constant/ZebraFont;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    .line 3
    sput-object v12, Lfr/w3blog/zpl/constant/ZebraFont;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraFont;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
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
    iput-object p3, p0, Lfr/w3blog/zpl/constant/ZebraFont;->letter:Ljava/lang/String;

    return-void
.end method

.method public static findBestEquivalentFontForPreview(Lfr/w3blog/zpl/constant/ZebraFont;)Ljava/lang/String;
    .registers 1

    const-string p0, "Arial"

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/w3blog/zpl/constant/ZebraFont;
    .registers 2

    .line 3
    const-class v0, Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/w3blog/zpl/constant/ZebraFont;

    return-object p0
.end method

.method public static values()[Lfr/w3blog/zpl/constant/ZebraFont;
    .registers 1

    .line 3
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraFont;->$VALUES:[Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-virtual {v0}, [Lfr/w3blog/zpl/constant/ZebraFont;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/w3blog/zpl/constant/ZebraFont;

    return-object v0
.end method


# virtual methods
.method public getLetter()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lfr/w3blog/zpl/constant/ZebraFont;->letter:Ljava/lang/String;

    return-object v0
.end method
