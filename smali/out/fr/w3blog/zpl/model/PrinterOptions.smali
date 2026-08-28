.class public Lfr/w3blog/zpl/model/PrinterOptions;
.super Ljava/lang/Object;
.source "PrinterOptions.java"


# instance fields
.field private defaultFontSize:Ljava/lang/Integer;

.field private defaultZebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

.field private zebraPPP:Lfr/w3blog/zpl/constant/ZebraPPP;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPPP;->DPI_300:Lfr/w3blog/zpl/constant/ZebraPPP;

    iput-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->zebraPPP:Lfr/w3blog/zpl/constant/ZebraPPP;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultZebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 19
    iput-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultFontSize:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lfr/w3blog/zpl/constant/ZebraPPP;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPPP;->DPI_300:Lfr/w3blog/zpl/constant/ZebraPPP;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultZebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 19
    iput-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultFontSize:Ljava/lang/Integer;

    .line 27
    iput-object p1, p0, Lfr/w3blog/zpl/model/PrinterOptions;->zebraPPP:Lfr/w3blog/zpl/constant/ZebraPPP;

    return-void
.end method


# virtual methods
.method public getDefaultFontSize()Ljava/lang/Integer;
    .registers 2

    .line 57
    iget-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultFontSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;
    .registers 2

    .line 50
    iget-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultZebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    return-object v0
.end method

.method public getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;
    .registers 2

    .line 34
    iget-object v0, p0, Lfr/w3blog/zpl/model/PrinterOptions;->zebraPPP:Lfr/w3blog/zpl/constant/ZebraPPP;

    return-object v0
.end method

.method public setDefaultFontSize(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/PrinterOptions;
    .registers 2

    .line 74
    iput-object p1, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultFontSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDefaultZebraFont(Lfr/w3blog/zpl/constant/ZebraFont;)Lfr/w3blog/zpl/model/PrinterOptions;
    .registers 2

    .line 65
    iput-object p1, p0, Lfr/w3blog/zpl/model/PrinterOptions;->defaultZebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    return-object p0
.end method

.method public setZebraPPP(Lfr/w3blog/zpl/constant/ZebraPPP;)Lfr/w3blog/zpl/model/PrinterOptions;
    .registers 2

    .line 42
    iput-object p1, p0, Lfr/w3blog/zpl/model/PrinterOptions;->zebraPPP:Lfr/w3blog/zpl/constant/ZebraPPP;

    return-object p0
.end method
