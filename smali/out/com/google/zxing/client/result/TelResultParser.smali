.class public final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "TelResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
    .registers 6

    .line 30
    invoke-static {p1}, Lcom/google/zxing/client/result/TelResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tel:"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "TEL:"

    if-nez v1, :cond_16

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v2

    .line 35
    :cond_16
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_2f
    move-object v0, p1

    :goto_30
    const/16 v1, 0x3f

    .line 37
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_3d

    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 39
    :goto_41
    new-instance v1, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-direct {v1, p1, v0, v2}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
