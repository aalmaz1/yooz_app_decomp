.class Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;
.super Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;
.source "MailDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MailDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rfc2822LenientParser"
.end annotation


# instance fields
.field private hasDefaultFws:Ljava/lang/Boolean;

.field final synthetic this$0:Ljavax/mail/internet/MailDateFormat;


# direct methods
.method constructor <init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 4

    .line 914
    iput-object p1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->this$0:Ljavax/mail/internet/MailDateFormat;

    .line 915
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;-><init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V

    return-void
.end method


# virtual methods
.method isMonthNameCaseSensitive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isValidZoneOffset(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method parseDay()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 929
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 930
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseFwsBetweenTimeOfDayAndZone()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 981
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    return-void
.end method

.method parseFwsInMonth()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 937
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->hasDefaultFws:Ljava/lang/Boolean;

    const/16 v1, 0x2d

    if-nez v0, :cond_16

    .line 938
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipChar(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->hasDefaultFws:Ljava/lang/Boolean;

    .line 939
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    goto :goto_23

    .line 940
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 941
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    goto :goto_23

    .line 943
    :cond_20
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseChar(C)V

    :goto_23
    return-void
.end method

.method parseHour()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 966
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseMinute()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 971
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseOptionalBegin()I
    .registers 3

    .line 920
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekAsciiDigit()Z

    move-result v0

    if-nez v0, :cond_22

    .line 921
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method parseSecond()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 976
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseYear()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 954
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_c

    return v0

    :cond_c
    const/16 v1, 0x32

    if-lt v0, v1, :cond_13

    add-int/lit16 v0, v0, 0x76c

    return v0

    :cond_13
    add-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method parseZone()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 987
    :try_start_1
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b9

    const/16 v1, 0x2b

    .line 991
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekChar(C)Z

    move-result v1

    if-nez v1, :cond_b4

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekChar(C)Z

    move-result v1

    if-eqz v1, :cond_21

    goto/16 :goto_b4

    :cond_21
    const/16 v1, 0x55

    const/16 v2, 0x75

    const/16 v3, 0x74

    const/16 v4, 0x54

    .line 993
    invoke-virtual {p0, v1, v2, v4, v3}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_30

    return v0

    :cond_30
    const/16 v6, 0x47

    const/16 v7, 0x67

    const/16 v8, 0x4d

    const/16 v9, 0x6d

    const/16 v10, 0x54

    const/16 v11, 0x74

    move-object v5, p0

    .line 995
    invoke-virtual/range {v5 .. v11}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativeTriple(CCCCCC)Z

    move-result v1

    if-eqz v1, :cond_44

    return v0

    :cond_44
    const/16 v1, 0x45

    const/16 v2, 0x65

    .line 1000
    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1
    :try_end_4c
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_4c} :catch_c7

    const-string v2, "Invalid zone"

    if-eqz v1, :cond_52

    const/4 v1, 0x4

    goto :goto_75

    :cond_52
    const/16 v1, 0x43

    const/16 v5, 0x63

    .line 1002
    :try_start_56
    invoke-virtual {p0, v1, v5}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x5

    goto :goto_75

    :cond_5e
    const/16 v1, 0x4d

    const/16 v5, 0x6d

    .line 1004
    invoke-virtual {p0, v1, v5}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x6

    goto :goto_75

    :cond_6a
    const/16 v1, 0x50

    const/16 v5, 0x70

    .line 1006
    invoke-virtual {p0, v1, v5}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_a8

    const/4 v1, 0x7

    :goto_75
    const/16 v5, 0x53

    const/16 v6, 0x73

    .line 1012
    invoke-virtual {p0, v5, v6, v4, v3}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativePair(CCCC)Z

    move-result v5

    if-eqz v5, :cond_82

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :cond_82
    const/16 v5, 0x44

    const/16 v6, 0x64

    .line 1014
    invoke-virtual {p0, v5, v6, v4, v3}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativePair(CCCC)Z

    move-result v3

    if-eqz v3, :cond_8f

    :goto_8c
    mul-int/lit8 v1, v1, 0x3c

    return v1

    .line 1016
    :cond_8f
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1017
    new-instance v1, Ljava/text/ParseException;

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 1018
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1009
    :cond_a8
    new-instance v1, Ljava/text/ParseException;

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 1010
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 992
    :cond_b4
    :goto_b4
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseZoneOffset()I

    move-result v0

    return v0

    .line 988
    :cond_b9
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Missing zone"

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_c7
    .catch Ljava/text/ParseException; {:try_start_56 .. :try_end_c7} :catch_c7

    :catch_c7
    move-exception v1

    .line 1023
    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 1024
    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No timezone? : \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f4
    return v0
.end method

.method peekFoldingWhiteSpace()Z
    .registers 3

    .line 1059
    invoke-super {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->peekFoldingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 1060
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 1061
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method skipFoldingWhiteSpace()Z
    .registers 4

    .line 1038
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekFoldingWhiteSpace()Z

    move-result v0

    .line 1041
    :goto_4
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1042
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2f

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2f

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2f

    goto :goto_3d

    .line 1047
    :cond_2f
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_4

    :cond_3d
    :goto_3d
    return v0
.end method
