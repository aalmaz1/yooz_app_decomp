.class public Lcom/sun/mail/imap/protocol/SearchSequence;
.super Ljava/lang/Object;
.source "SearchSequence.java"


# static fields
.field private static monthTable:[Ljava/lang/String;


# instance fields
.field protected cal:Ljava/util/Calendar;

.field private protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "Jan"

    const-string v1, "Feb"

    const-string v2, "Mar"

    const-string v3, "Apr"

    const-string v4, "May"

    const-string v5, "Jun"

    const-string v6, "Jul"

    const-string v7, "Aug"

    const-string v8, "Sep"

    const-string v9, "Oct"

    const-string v10, "Nov"

    const-string v11, "Dec"

    .line 418
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    .line 75
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-void
.end method

.method public static isAscii(Ljava/lang/String;)Z
    .locals 5

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isAscii(Ljavax/mail/search/SearchTerm;)Z
    .locals 1

    .line 160
    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_0

    .line 161
    check-cast p0, Ljavax/mail/search/AndTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii([Ljavax/mail/search/SearchTerm;)Z

    move-result p0

    return p0

    .line 162
    :cond_0
    instance-of v0, p0, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_1

    .line 163
    check-cast p0, Ljavax/mail/search/OrTerm;

    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii([Ljavax/mail/search/SearchTerm;)Z

    move-result p0

    return p0

    .line 164
    :cond_1
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_2

    .line 165
    check-cast p0, Ljavax/mail/search/NotTerm;

    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result p0

    return p0

    .line 166
    :cond_2
    instance-of v0, p0, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_3

    .line 167
    check-cast p0, Ljavax/mail/search/StringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 168
    :cond_3
    instance-of v0, p0, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_4

    .line 169
    check-cast p0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isAscii([Ljavax/mail/search/SearchTerm;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 183
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 184
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p1

    const/4 v0, 0x0

    .line 210
    aget-object v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    const/4 v1, 0x1

    .line 212
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 213
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "BODY"

    .line 378
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 379
    invoke-virtual {p1}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v0

    .line 308
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 310
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v2

    .line 312
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object p1

    .line 313
    array-length v3, v2

    if-nez v3, :cond_1

    array-length v3, p1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Invalid FlagTerm"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    move v4, v3

    .line 316
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_e

    .line 317
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_3

    if-eqz v0, :cond_2

    const-string v5, "DELETED"

    goto :goto_2

    :cond_2
    const-string v5, "UNDELETED"

    .line 318
    :goto_2
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_8

    .line 319
    :cond_3
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_5

    if-eqz v0, :cond_4

    const-string v5, "ANSWERED"

    goto :goto_3

    :cond_4
    const-string v5, "UNANSWERED"

    .line 320
    :goto_3
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_8

    .line 321
    :cond_5
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_7

    if-eqz v0, :cond_6

    const-string v5, "DRAFT"

    goto :goto_4

    :cond_6
    const-string v5, "UNDRAFT"

    .line 322
    :goto_4
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_8

    .line 323
    :cond_7
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_9

    if-eqz v0, :cond_8

    const-string v5, "FLAGGED"

    goto :goto_5

    :cond_8
    const-string v5, "UNFLAGGED"

    .line 324
    :goto_5
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_8

    .line 325
    :cond_9
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_b

    if-eqz v0, :cond_a

    const-string v5, "RECENT"

    goto :goto_6

    :cond_a
    const-string v5, "OLD"

    .line 326
    :goto_6
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_8

    .line 327
    :cond_b
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_d

    if-eqz v0, :cond_c

    const-string v5, "SEEN"

    goto :goto_7

    :cond_c
    const-string v5, "UNSEEN"

    .line 328
    :goto_7
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    :cond_d
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 331
    :cond_e
    :goto_9
    array-length v2, p1

    if-ge v3, v2, :cond_10

    if-eqz v0, :cond_f

    const-string v2, "KEYWORD"

    goto :goto_a

    :cond_f
    const-string v2, "UNKEYWORD"

    .line 332
    :goto_a
    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 333
    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    return-object v1
.end method

.method protected from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "FROM"

    .line 342
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 343
    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method public generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    instance-of v0, p1, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Ljavax/mail/search/AndTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Ljavax/mail/search/OrTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_2

    .line 105
    check-cast p1, Ljavax/mail/search/NotTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 106
    :cond_2
    instance-of v0, p1, Ljavax/mail/search/HeaderTerm;

    if-eqz v0, :cond_3

    .line 107
    check-cast p1, Ljavax/mail/search/HeaderTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 108
    :cond_3
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_4

    .line 109
    check-cast p1, Ljavax/mail/search/FlagTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 110
    :cond_4
    instance-of v0, p1, Ljavax/mail/search/FromTerm;

    if-eqz v0, :cond_5

    .line 111
    check-cast p1, Ljavax/mail/search/FromTerm;

    .line 112
    invoke-virtual {p1}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 114
    :cond_5
    instance-of v0, p1, Ljavax/mail/search/FromStringTerm;

    if-eqz v0, :cond_6

    .line 115
    check-cast p1, Ljavax/mail/search/FromStringTerm;

    .line 116
    invoke-virtual {p1}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 118
    :cond_6
    instance-of v0, p1, Ljavax/mail/search/RecipientTerm;

    if-eqz v0, :cond_7

    .line 119
    check-cast p1, Ljavax/mail/search/RecipientTerm;

    .line 120
    invoke-virtual {p1}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 124
    :cond_7
    instance-of v0, p1, Ljavax/mail/search/RecipientStringTerm;

    if-eqz v0, :cond_8

    .line 125
    check-cast p1, Ljavax/mail/search/RecipientStringTerm;

    .line 126
    invoke-virtual {p1}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 130
    :cond_8
    instance-of v0, p1, Ljavax/mail/search/SubjectTerm;

    if-eqz v0, :cond_9

    .line 131
    check-cast p1, Ljavax/mail/search/SubjectTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 132
    :cond_9
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-eqz v0, :cond_a

    .line 133
    check-cast p1, Ljavax/mail/search/BodyTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 134
    :cond_a
    instance-of v0, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_b

    .line 135
    check-cast p1, Ljavax/mail/search/SizeTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 136
    :cond_b
    instance-of v0, p1, Ljavax/mail/search/SentDateTerm;

    if-eqz v0, :cond_c

    .line 137
    check-cast p1, Ljavax/mail/search/SentDateTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 138
    :cond_c
    instance-of v0, p1, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v0, :cond_d

    .line 139
    check-cast p1, Ljavax/mail/search/ReceivedDateTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 140
    :cond_d
    instance-of v0, p1, Lcom/sun/mail/imap/OlderTerm;

    if-eqz v0, :cond_e

    .line 141
    check-cast p1, Lcom/sun/mail/imap/OlderTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->older(Lcom/sun/mail/imap/OlderTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 142
    :cond_e
    instance-of v0, p1, Lcom/sun/mail/imap/YoungerTerm;

    if-eqz v0, :cond_f

    .line 143
    check-cast p1, Lcom/sun/mail/imap/YoungerTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->younger(Lcom/sun/mail/imap/YoungerTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 144
    :cond_f
    instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;

    if-eqz v0, :cond_10

    .line 145
    check-cast p1, Ljavax/mail/search/MessageIDTerm;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 146
    :cond_10
    instance-of p2, p1, Lcom/sun/mail/imap/ModifiedSinceTerm;

    if-eqz p2, :cond_11

    .line 147
    check-cast p1, Lcom/sun/mail/imap/ModifiedSinceTerm;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->modifiedSince(Lcom/sun/mail/imap/ModifiedSinceTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    return-object p1

    .line 149
    :cond_11
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string p2, "Search too complex"

    invoke-direct {p1, p2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    .line 289
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 290
    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 291
    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    .line 298
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    const-string v1, "Message-ID"

    .line 299
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 301
    invoke-virtual {p1}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected modifiedSince(Lcom/sun/mail/imap/ModifiedSinceTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    const-string v1, "CONDSTORE"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Server doesn\'t support MODSEQ searches"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "MODSEQ"

    .line 547
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 548
    invoke-virtual {p1}, Lcom/sun/mail/imap/ModifiedSinceTerm;->getModSeq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "NOT"

    .line 270
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 277
    invoke-virtual {p1}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object p1

    .line 278
    instance-of v1, p1, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_1

    instance-of v1, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_1

    .line 279
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    :goto_1
    return-object v0
.end method

.method protected older(Lcom/sun/mail/imap/OlderTerm;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    const-string v1, "WITHIN"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Server doesn\'t support OLDER searches"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 511
    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "OLDER"

    .line 512
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 513
    invoke-virtual {p1}, Lcom/sun/mail/imap/OlderTerm;->getInterval()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p1

    .line 225
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 226
    aget-object v0, p1, v2

    move v1, v3

    .line 229
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 230
    new-instance v4, Ljavax/mail/search/OrTerm;

    aget-object v5, p1, v1

    invoke-direct {v4, v0, v5}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto :goto_0

    .line 232
    :cond_0
    check-cast v0, Ljavax/mail/search/OrTerm;

    .line 234
    invoke-virtual {v0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p1

    .line 238
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 241
    array-length v1, p1

    if-le v1, v3, :cond_2

    const-string v1, "OR"

    .line 242
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 249
    :cond_2
    aget-object v1, p1, v2

    instance-of v2, v1, Ljavax/mail/search/AndTerm;

    if-nez v2, :cond_4

    instance-of v2, v1, Ljavax/mail/search/FlagTerm;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_2

    .line 250
    :cond_4
    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 255
    :goto_2
    array-length v1, p1

    if-le v1, v3, :cond_7

    .line 256
    aget-object p1, p1, v3

    instance-of v1, p1, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_5

    goto :goto_3

    .line 259
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_4

    .line 257
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    :cond_7
    :goto_4
    return-object v0
.end method

.method protected receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 471
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 472
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result p1

    const-string v2, "NOT ON "

    packed-switch p1, :pswitch_data_0

    .line 494
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Date Comparison"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SINCE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 476
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " SINCE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 491
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 479
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "ON "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 482
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "BEFORE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 488
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "OR BEFORE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ON "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 352
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_0

    const-string p1, "TO"

    .line 353
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 354
    :cond_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_1

    const-string p1, "CC"

    .line 355
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 356
    :cond_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_2

    const-string p1, "BCC"

    .line 357
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 361
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    return-object v0

    .line 359
    :cond_2
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string p2, "Illegal Recipient type"

    invoke-direct {p1, p2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 441
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result p1

    const-string v2, "NOT SENTON "

    packed-switch p1, :pswitch_data_0

    .line 463
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Date Comparison"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 454
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SENTSINCE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 445
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " SENTSINCE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 460
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 448
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SENTON "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 451
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SENTBEFORE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 457
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "OR SENTBEFORE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " SENTON "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 387
    invoke-virtual {p1}, Ljavax/mail/search/SizeTerm;->getComparison()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v1, "LARGER"

    .line 389
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 396
    :cond_0
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Comparison"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v1, "SMALLER"

    .line 392
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 399
    :goto_0
    invoke-virtual {p1}, Ljavax/mail/search/SizeTerm;->getNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "SUBJECT"

    .line 369
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 370
    invoke-virtual {p1}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method

.method protected toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 431
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    sget-object p1, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected younger(Lcom/sun/mail/imap/YoungerTerm;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    const-string v1, "WITHIN"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    new-instance p1, Ljavax/mail/search/SearchException;

    const-string v0, "Server doesn\'t support YOUNGER searches"

    invoke-direct {p1, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 528
    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "YOUNGER"

    .line 529
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 530
    invoke-virtual {p1}, Lcom/sun/mail/imap/YoungerTerm;->getInterval()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)Lcom/sun/mail/iap/Argument;

    return-object v0
.end method
