.class public Lfr/w3blog/zpl/model/element/ZebraAFontElement;
.super Lfr/w3blog/zpl/model/ZebraElement;
.source "ZebraAFontElement.java"


# instance fields
.field private dotHeigth:I

.field private dotsWidth:I

.field private zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

.field private zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;


# direct methods
.method public constructor <init>(Lfr/w3blog/zpl/constant/ZebraFont;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 25
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 38
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    return-void
.end method

.method public constructor <init>(Lfr/w3blog/zpl/constant/ZebraFont;II)V
    .registers 5

    .line 52
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 25
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 53
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 54
    iput p2, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->dotHeigth:I

    .line 55
    iput p3, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->dotsWidth:I

    return-void
.end method

.method public constructor <init>(Lfr/w3blog/zpl/constant/ZebraFont;Lfr/w3blog/zpl/constant/ZebraRotation;II)V
    .registers 6

    .line 71
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 25
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 72
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 73
    iput-object p2, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 74
    iput p3, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->dotHeigth:I

    .line 75
    iput p4, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->dotsWidth:I

    return-void
.end method


# virtual methods
.method public getZplCode(Lfr/w3blog/zpl/model/PrinterOptions;)Ljava/lang/String;
    .registers 4

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-virtual {v0}, Lfr/w3blog/zpl/constant/ZebraFont;->getLetter()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    invoke-virtual {v0}, Lfr/w3blog/zpl/constant/ZebraRotation;->getLetter()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget v0, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->dotHeigth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget v0, p0, Lfr/w3blog/zpl/model/element/ZebraAFontElement;->dotsWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "A"

    invoke-static {v0, p1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
