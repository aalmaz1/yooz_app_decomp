.class public Lfr/w3blog/zpl/model/element/ZebraBarCode39;
.super Lfr/w3blog/zpl/model/element/ZebraBarCode;
.source "ZebraBarCode39.java"


# instance fields
.field private checkDigit43:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lfr/w3blog/zpl/model/element/ZebraBarCode;-><init>(IILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p6}, Lfr/w3blog/zpl/model/element/ZebraBarCode;-><init>(IILjava/lang/String;III)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIIZ)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p6}, Lfr/w3blog/zpl/model/element/ZebraBarCode;-><init>(IILjava/lang/String;III)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    .line 28
    invoke-virtual {p0, p7}, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->setCheckDigit43(Z)Lfr/w3blog/zpl/model/element/ZebraBarCode39;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IZZ)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p6}, Lfr/w3blog/zpl/model/element/ZebraBarCode;-><init>(IILjava/lang/String;IZZ)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    return-void
.end method


# virtual methods
.method public getZplCode(Lfr/w3blog/zpl/model/PrinterOptions;)Ljava/lang/String;
    .locals 3

    .line 37
    invoke-virtual {p0}, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->getStartZplCodeBuilder()Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    invoke-virtual {v1}, Lfr/w3blog/zpl/constant/ZebraRotation;->getLetter()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->barCodeHeigth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->showTextInterpretation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->showTextInterpretationAbove:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "B3"

    invoke-static {v1, v0}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "^FD"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FS"

    .line 41
    invoke-static {v0}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCheckDigit43()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    return v0
.end method

.method public setCheckDigit43(Z)Lfr/w3blog/zpl/model/element/ZebraBarCode39;
    .locals 0

    .line 50
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode39;->checkDigit43:Z

    return-object p0
.end method
