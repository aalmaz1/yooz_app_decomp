.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;,
        Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;,
        Ljavax/mail/internet/MailDateFormat$AbstractDateParser;
    }
.end annotation


# static fields
.field private static final LEAP_SECOND:I = 0x3c

.field private static final LOGGER:Lcom/sun/mail/util/MailLogger;

.field private static final PATTERN:Ljava/lang/String; = "EEE, d MMM yyyy HH:mm:ss Z (z)"

.field private static final UNKNOWN_DAY_NAME:I = -0x1

.field private static final UTC:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = -0x711451d5f59c82abL


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 154
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v3, Ljavax/mail/internet/MailDateFormat;

    const-string v4, "DEBUG"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->LOGGER:Lcom/sun/mail/util/MailLogger;

    const-string v0, "UTC"

    .line 158
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "EEE, d MMM yyyy HH:mm:ss Z (z)"

    .line 166
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$000()Lcom/sun/mail/util/MailLogger;
    .registers 1

    .line 149
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->LOGGER:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$100(Ljavax/mail/internet/MailDateFormat;IIIIIIII)Ljava/util/Date;
    .registers 9

    .line 149
    invoke-direct/range {p0 .. p8}, Ljavax/mail/internet/MailDateFormat;->toDate(IIIIIIII)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-string p1, "EEE, d MMM yyyy HH:mm:ss Z (z)"

    .line 194
    invoke-super {p0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private superApplyPattern(Ljava/lang/String;)V
    .registers 2

    .line 309
    invoke-super {p0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private toDate(IIIIIIII)Ljava/util/Date;
    .registers 16

    const/16 v0, 0x3c

    if-ne p7, v0, :cond_6

    const/16 p7, 0x3b

    :cond_6
    move v6, p7

    .line 377
    iget-object p7, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {p7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p7

    .line 379
    :try_start_d
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    sget-object v1, Ljavax/mail/internet/MailDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 380
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 381
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    move v1, p4

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_38

    .line 383
    iget-object p2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/4 p3, 0x7

    .line 384
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_30

    goto :goto_38

    .line 388
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Inconsistent day-name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_38
    :goto_38
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p8}, Ljava/util/Calendar;->add(II)V

    .line 386
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_4b

    .line 391
    iget-object p2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {p2, p7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p1

    :catchall_4b
    move-exception p1

    iget-object p2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {p2, p7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 392
    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    const-string v1, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    .line 178
    invoke-direct {v0, v1}, Ljavax/mail/internet/MailDateFormat;->superApplyPattern(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 3

    .line 288
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method applyLocalizedPattern() shouldn\'t be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 3

    .line 301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method applyPattern() shouldn\'t be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 149
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->clone()Ljavax/mail/internet/MailDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/mail/internet/MailDateFormat;
    .registers 2

    .line 205
    invoke-super {p0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MailDateFormat;

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 4

    .line 221
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 3

    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method get2DigitYearStart() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    .line 246
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ltz v1, :cond_30

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_16

    goto :goto_30

    .line 250
    :cond_16
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;-><init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 251
    invoke-virtual {v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parse()Ljava/util/Date;

    move-result-object p1

    goto :goto_2f

    :cond_26
    new-instance v0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;-><init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 252
    invoke-virtual {v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parse()Ljava/util/Date;

    move-result-object p1

    :goto_2f
    return-object p1

    :cond_30
    :goto_30
    return-object v0

    .line 245
    :cond_31
    throw v0
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 3

    .line 338
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method set2DigitYearStart() shouldn\'t be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .registers 3

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method setCalendar() shouldn\'t be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3

    .line 351
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method setDateFormatSymbols() shouldn\'t be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .registers 3

    .line 275
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
