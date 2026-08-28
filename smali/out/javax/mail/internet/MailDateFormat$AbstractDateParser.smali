.class abstract Ljavax/mail/internet/MailDateFormat$AbstractDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MailDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractDateParser"
.end annotation


# static fields
.field static final INVALID_CHAR:I = -0x1

.field static final MAX_YEAR_DIGITS:I = 0x8


# instance fields
.field final pos:Ljava/text/ParsePosition;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 3

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    .line 418
    iput-object p2, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    return-void
.end method


# virtual methods
.method final getAsciiDigit()I
    .registers 4

    .line 665
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v0

    const/16 v1, 0x30

    if-gt v1, v0, :cond_14

    const/16 v1, 0x39

    if-gt v0, v1, :cond_14

    int-to-char v0, v0

    const/16 v1, 0xa

    .line 667
    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    return v0

    :cond_14
    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 670
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_22
    return v1
.end method

.method final getChar()I
    .registers 4

    .line 677
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 678
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 679
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    return v0

    :cond_26
    const/4 v0, -0x1

    return v0
.end method

.method isValidZoneOffset(I)Z
    .registers 3

    .line 616
    rem-int/lit8 p1, p1, 0x64

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method final parse()Ljava/util/Date;
    .registers 7

    .line 422
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 424
    :try_start_6
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->tryParse()Ljava/util/Date;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v1

    .line 426
    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 427
    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad date: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    :cond_38
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 430
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method final parseAsciiDigits(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0, p1, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->parseAsciiDigits(II)I

    move-result p1

    return p1
.end method

.method final parseAsciiDigits(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, p1, p2, v0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->parseAsciiDigits(IIZ)I

    move-result p1

    return p1
.end method

.method final parseAsciiDigits(IIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_14

    .line 631
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekAsciiDigit()Z

    move-result v2

    if-eqz v2, :cond_14

    mul-int/lit8 v1, v1, 0xa

    .line 632
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getAsciiDigit()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    if-lt v0, p1, :cond_22

    if-ne v0, p2, :cond_21

    if-nez p3, :cond_21

    .line 637
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekAsciiDigit()Z

    move-result p3

    if-eqz p3, :cond_21

    goto :goto_22

    :cond_21
    return v1

    .line 638
    :cond_22
    :goto_22
    iget-object p3, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    if-ne p1, p2, :cond_33

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_33
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "between "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " and "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 646
    :goto_4c
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid input: expected "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " ASCII digits"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 647
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method final parseChar(C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 659
    :cond_7
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input: expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 660
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final parseDayName()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Invalid day-name"

    if-eq v0, v1, :cond_7f

    const/16 v1, 0x46

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x4d

    const/16 v4, 0x6e

    if-eq v0, v1, :cond_53

    const/16 v1, 0x57

    const/16 v5, 0x65

    if-eq v0, v1, :cond_49

    const/16 v1, 0x53

    const/16 v6, 0x75

    if-eq v0, v1, :cond_36

    const/16 v1, 0x54

    if-ne v0, v1, :cond_69

    .line 450
    invoke-virtual {p0, v6, v5}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    return v0

    :cond_2c
    const/16 v0, 0x68

    .line 452
    invoke-virtual {p0, v0, v6}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x5

    return v0

    .line 443
    :cond_36
    invoke-virtual {p0, v6, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v3

    :cond_3d
    const/16 v0, 0x61

    const/16 v1, 0x74

    .line 445
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x7

    return v0

    :cond_49
    const/16 v0, 0x64

    .line 462
    invoke-virtual {p0, v5, v0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x4

    return v0

    :cond_53
    const/16 v0, 0x6f

    .line 457
    invoke-virtual {p0, v0, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x2

    return v0

    :cond_5d
    const/16 v0, 0x72

    const/16 v1, 0x69

    .line 467
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x6

    return v0

    .line 475
    :cond_69
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 476
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 472
    :cond_7f
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 473
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final parseFoldingWhiteSpace()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipFoldingWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 652
    :cond_7
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 653
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const-string v2, "Invalid input: expected FWS"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final parseMonthName(Z)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 484
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v1

    const/16 v2, 0x52

    const/16 v3, 0x50

    const/16 v4, 0x41

    const/16 v5, 0x43

    const/16 v6, 0x55

    const-string v7, "Invalid month"

    const/16 v8, 0x45

    const/16 v9, 0x72

    const/16 v10, 0x61

    const/16 v11, 0x75

    const/16 v12, 0x70

    const/16 v13, 0x63

    const/4 v14, 0x1

    const/16 v15, 0x65

    sparse-switch v1, :sswitch_data_180

    goto/16 :goto_16a

    :sswitch_26
    if-nez p1, :cond_16a

    goto :goto_42

    :sswitch_29
    if-nez p1, :cond_16a

    goto :goto_53

    :sswitch_2c
    if-nez p1, :cond_16a

    goto :goto_68

    :sswitch_2f
    if-nez p1, :cond_16a

    goto :goto_81

    :sswitch_32
    if-nez p1, :cond_16a

    goto/16 :goto_c1

    :sswitch_36
    if-nez p1, :cond_16a

    goto/16 :goto_115

    :sswitch_3a
    if-nez p1, :cond_16a

    goto/16 :goto_128

    :sswitch_3e
    if-nez p1, :cond_16a

    goto/16 :goto_139

    .line 560
    :goto_42
    :sswitch_42
    invoke-virtual {v0, v15, v12}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_50

    if-nez p1, :cond_16a

    .line 561
    invoke-virtual {v0, v15, v8, v12, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_50
    const/16 v1, 0x8

    return v1

    :goto_53
    :sswitch_53
    const/16 v1, 0x74

    .line 550
    invoke-virtual {v0, v13, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v2

    if-nez v2, :cond_65

    if-nez p1, :cond_16a

    const/16 v2, 0x54

    .line 551
    invoke-virtual {v0, v13, v5, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_65
    const/16 v1, 0x9

    return v1

    :goto_68
    :sswitch_68
    const/16 v1, 0x6f

    const/16 v2, 0x76

    .line 570
    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v3

    if-nez v3, :cond_7e

    if-nez p1, :cond_16a

    const/16 v3, 0x4f

    const/16 v4, 0x56

    .line 571
    invoke-virtual {v0, v1, v3, v2, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_7e
    const/16 v1, 0xa

    return v1

    .line 510
    :goto_81
    :sswitch_81
    invoke-virtual {v0, v10}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_8f

    if-nez p1, :cond_16a

    invoke-virtual {v0, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 511
    :cond_8f
    invoke-virtual {v0, v9}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_bf

    if-nez p1, :cond_9e

    .line 512
    invoke-virtual {v0, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_9e

    goto :goto_bf

    :cond_9e
    const/16 v1, 0x79

    .line 514
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_bd

    if-nez p1, :cond_b1

    const/16 v1, 0x59

    .line 515
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_bd

    .line 518
    :cond_b1
    iget-object v1, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_16a

    :cond_bd
    :goto_bd
    const/4 v1, 0x4

    return v1

    :cond_bf
    :goto_bf
    const/4 v1, 0x2

    return v1

    .line 490
    :goto_c1
    :sswitch_c1
    invoke-virtual {v0, v11}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x6e

    if-nez v1, :cond_e4

    if-nez p1, :cond_d4

    invoke-virtual {v0, v6}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_d4

    goto :goto_e4

    .line 500
    :cond_d4
    invoke-virtual {v0, v10, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_e2

    if-nez p1, :cond_16a

    .line 501
    invoke-virtual {v0, v10, v4, v3, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_e2
    const/4 v1, 0x0

    return v1

    :cond_e4
    :goto_e4
    const/16 v1, 0x6c

    .line 491
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_113

    if-nez p1, :cond_f7

    const/16 v1, 0x4c

    .line 492
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_f7

    goto :goto_113

    .line 494
    :cond_f7
    invoke-virtual {v0, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_111

    if-nez p1, :cond_106

    .line 495
    invoke-virtual {v0, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_106

    goto :goto_111

    .line 498
    :cond_106
    iget-object v1, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_16a

    :cond_111
    :goto_111
    const/4 v1, 0x5

    return v1

    :cond_113
    :goto_113
    const/4 v1, 0x6

    return v1

    :goto_115
    :sswitch_115
    const/16 v1, 0x62

    .line 580
    invoke-virtual {v0, v15, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v2

    if-nez v2, :cond_127

    if-nez p1, :cond_16a

    const/16 v2, 0x42

    .line 581
    invoke-virtual {v0, v15, v8, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_127
    return v14

    .line 540
    :goto_128
    :sswitch_128
    invoke-virtual {v0, v15, v13}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_136

    if-nez p1, :cond_16a

    .line 541
    invoke-virtual {v0, v15, v8, v13, v5}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_136
    const/16 v1, 0xb

    return v1

    :goto_139
    :sswitch_139
    const/16 v1, 0x67

    .line 527
    invoke-virtual {v0, v11, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v4

    if-nez v4, :cond_15c

    if-nez p1, :cond_14c

    const/16 v4, 0x47

    .line 528
    invoke-virtual {v0, v11, v6, v1, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_14c

    goto :goto_15c

    .line 530
    :cond_14c
    invoke-virtual {v0, v12, v9}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_15a

    if-nez p1, :cond_16a

    .line 531
    invoke-virtual {v0, v12, v3, v9, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_16a

    :cond_15a
    const/4 v1, 0x3

    return v1

    :cond_15c
    :goto_15c
    const/4 v1, 0x7

    return v1

    .line 586
    :sswitch_15e
    new-instance v1, Ljava/text/ParseException;

    iget-object v2, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v1, v7, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 588
    :cond_16a
    :goto_16a
    iget-object v1, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 589
    new-instance v1, Ljava/text/ParseException;

    iget-object v2, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v1, v7, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :sswitch_data_180
    .sparse-switch
        -0x1 -> :sswitch_15e
        0x41 -> :sswitch_139
        0x44 -> :sswitch_128
        0x46 -> :sswitch_115
        0x4a -> :sswitch_c1
        0x4d -> :sswitch_81
        0x4e -> :sswitch_68
        0x4f -> :sswitch_53
        0x53 -> :sswitch_42
        0x61 -> :sswitch_3e
        0x64 -> :sswitch_3a
        0x66 -> :sswitch_36
        0x6a -> :sswitch_32
        0x6d -> :sswitch_2f
        0x6e -> :sswitch_2c
        0x6f -> :sswitch_29
        0x73 -> :sswitch_26
    .end sparse-switch
.end method

.method final parseZoneOffset()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Invalid zone"

    const/4 v3, 0x1

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_29

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_11

    goto :goto_29

    :cond_11
    if-eq v0, v1, :cond_1d

    .line 610
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 612
    :cond_1d
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_29
    :goto_29
    const/4 v5, 0x4

    .line 601
    invoke-virtual {p0, v5, v5, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->parseAsciiDigits(IIZ)I

    move-result v5

    .line 602
    invoke-virtual {p0, v5}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->isValidZoneOffset(I)Z

    move-result v6

    if-eqz v6, :cond_41

    if-ne v0, v4, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    .line 607
    :goto_38
    div-int/lit8 v0, v5, 0x64

    mul-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v5, v5, 0x64

    add-int/2addr v0, v5

    mul-int/2addr v1, v0

    return v1

    .line 603
    :cond_41
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 604
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final peekAsciiDigit()Z
    .registers 3

    .line 782
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 783
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-gt v1, v0, :cond_30

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 784
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method final peekChar(C)Z
    .registers 4

    .line 795
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 796
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method peekFoldingWhiteSpace()Z
    .registers 3

    .line 788
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_40

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 789
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 790
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 791
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_40

    :cond_3e
    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return v0
.end method

.method final skipAlternative(CC)Z
    .registers 3

    .line 757
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method final skipAlternativePair(CCCC)Z
    .registers 5

    .line 746
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 747
    invoke-virtual {p0, p3, p4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_e

    return p2

    .line 750
    :cond_e
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method final skipAlternativeTriple(CCCCCC)Z
    .registers 7

    .line 731
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 733
    invoke-virtual {p0, p5, p6}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    .line 736
    :cond_e
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method final skipChar(C)Z
    .registers 4

    .line 772
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    .line 773
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_28

    .line 774
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method skipFoldingWhiteSpace()Z
    .registers 5

    const/16 v0, 0x20

    .line 688
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 689
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekFoldingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    .line 692
    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_23

    .line 694
    :cond_1c
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekFoldingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 699
    :cond_23
    :goto_23
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 700
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipWhiteSpace()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 701
    :cond_2f
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipNewline()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 702
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 703
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v1

    :cond_41
    return v2

    .line 708
    :cond_42
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipNewline()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipWhiteSpace()Z

    move-result v3

    if-eqz v3, :cond_4f

    return v2

    .line 711
    :cond_4f
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v1
.end method

.method final skipNewline()Z
    .registers 3

    const/16 v0, 0xd

    const/16 v1, 0xa

    .line 723
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    return v0
.end method

.method final skipPair(CC)Z
    .registers 4

    .line 761
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 762
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_e

    return p2

    .line 765
    :cond_e
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method final skipWhiteSpace()Z
    .registers 4

    .line 717
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    :goto_6
    const/16 v1, 0x20

    const/16 v2, 0x9

    .line 718
    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    .line 719
    :cond_11
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-le v1, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method abstract tryParse()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
