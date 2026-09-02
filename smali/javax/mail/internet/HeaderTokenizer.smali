.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 155
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "()<>@,;:\\\"\t .[]"

    .line 195
    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 184
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    .line 170
    :cond_7
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 171
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 172
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    const/4 p2, 0x0

    .line 173
    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    return-void
.end method

.method private collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 386
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    const/4 v4, -0x2

    const/16 v5, 0x22

    if-ge v2, v3, :cond_52

    .line 387
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1e

    .line 389
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v6

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_1c
    move v1, v6

    goto :goto_4c

    :cond_1e
    const/16 v3, 0xd

    if-ne v2, v3, :cond_23

    goto :goto_1c

    :cond_23
    if-ne v2, p1, :cond_4c

    .line 394
    iget p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr p1, v6

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    if-eqz v1, :cond_34

    .line 398
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr p1, v6

    invoke-static {v1, v0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_3b

    .line 400
    :cond_34
    iget-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr p1, v6

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_3b
    if-eq v2, v5, :cond_46

    .line 403
    invoke-static {p1}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 404
    iget p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p2, v6

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 407
    :cond_46
    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {p2, v4, p1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 386
    :cond_4c
    :goto_4c
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v6

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_3

    :cond_52
    if-eq p1, v5, :cond_6d

    if-eqz v1, :cond_5d

    .line 420
    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_63

    .line 422
    :cond_5d
    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 423
    :goto_63
    invoke-static {p1}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {p2, v4, p1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 415
    :cond_6d
    new-instance p1, Ljavax/mail/internet/ParseException;

    const-string p2, "Unbalanced quoted string"

    invoke-direct {p1, p2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 10

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge p1, p2, :cond_37

    .line 463
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_16

    if-eqz v2, :cond_16

    :goto_14
    move v2, v1

    goto :goto_34

    :cond_16
    const/16 v2, 0x5c

    if-nez v3, :cond_2a

    const/4 v5, 0x1

    if-ne v4, v2, :cond_20

    move v2, v1

    move v3, v5

    goto :goto_34

    :cond_20
    const/16 v2, 0xd

    if-ne v4, v2, :cond_26

    move v2, v5

    goto :goto_34

    .line 479
    :cond_26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_2a
    if-eqz p3, :cond_2f

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    :cond_2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    move v3, v2

    :goto_34
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 493
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 290
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_9

    .line 291
    sget-object p1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p1

    .line 294
    :cond_9
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_13

    .line 295
    sget-object p1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p1

    .line 301
    :cond_13
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    const/16 v4, 0x28

    const/4 v5, 0x1

    if-ne v0, v4, :cond_93

    .line 308
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v5

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v6, v5

    :goto_28
    if-lez v6, :cond_57

    .line 309
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v7, v8, :cond_57

    .line 311
    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_41

    .line 313
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v5

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_3f
    move v3, v5

    goto :goto_51

    :cond_41
    const/16 v8, 0xd

    if-ne v7, v8, :cond_46

    goto :goto_3f

    :cond_46
    if-ne v7, v4, :cond_4b

    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_4b
    const/16 v8, 0x29

    if-ne v7, v8, :cond_51

    add-int/lit8 v6, v6, -0x1

    .line 310
    :cond_51
    :goto_51
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v5

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_28

    :cond_57
    if-nez v6, :cond_8b

    .line 325
    iget-boolean v4, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v4, :cond_79

    if-eqz v3, :cond_69

    .line 330
    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v1, v5

    invoke-static {p1, v0, v1, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_72

    .line 332
    :cond_69
    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p2, v5

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 334
    :goto_72
    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v0, -0x3

    invoke-direct {p2, v0, p1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 338
    :cond_79
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    if-ne v0, v1, :cond_82

    .line 339
    sget-object p1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p1

    .line 340
    :cond_82
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1d

    .line 323
    :cond_8b
    new-instance p1, Ljavax/mail/internet/ParseException;

    const-string p2, "Unbalanced comments"

    invoke-direct {p1, p2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    const/16 v1, 0x22

    if-ne v0, v1, :cond_a1

    .line 346
    iget p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr p1, v5

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 347
    invoke-direct {p0, v1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_a1
    const/16 v3, 0x20

    if-lt v0, v3, :cond_f3

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_f3

    .line 351
    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_b2

    goto :goto_f3

    .line 364
    :cond_b2
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_b4
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v2, v7, :cond_e4

    .line 365
    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_d9

    if-ge v2, v6, :cond_d9

    if-eq v2, v4, :cond_d9

    if-eq v2, v3, :cond_d9

    if-eq v2, v1, :cond_d9

    .line 368
    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 369
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_d3

    goto :goto_d9

    .line 364
    :cond_d3
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v5

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_b4

    :cond_d9
    :goto_d9
    if-lez p1, :cond_e4

    if-eq v2, p1, :cond_e4

    .line 373
    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 374
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1

    .line 379
    :cond_e4
    new-instance p1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_f3
    :goto_f3
    if-lez p1, :cond_fc

    if-eq v0, p1, :cond_fc

    .line 355
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1

    .line 357
    :cond_fc
    iget p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr p1, v5

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    new-array p1, v5, [C

    aput-char v0, p1, v2

    .line 360
    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, v0, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2
.end method

.method private skipWhiteSpace()I
    .registers 3

    .line 430
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v1, :cond_26

    .line 431
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1f

    .line 433
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return v0

    .line 430
    :cond_1f
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    :cond_26
    const/4 v0, -0x4

    return v0
.end method

.method private static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_20

    .line 442
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_20
    :goto_20
    if-gtz v0, :cond_25

    const-string p0, ""

    return-object p0

    :cond_25
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 449
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .registers 3

    .line 277
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_c
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public next(C)Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1
.end method

.method public next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 246
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 247
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    .line 248
    iget p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    return-object p1
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 264
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 266
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    return-object v0
.end method
