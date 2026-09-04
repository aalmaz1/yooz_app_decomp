.class public Lcom/sun/mail/imap/protocol/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field static final standardItems:[Ljava/lang/String;


# instance fields
.field public highestmodseq:J

.field public items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mbox:Ljava/lang/String;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J

.field public unseen:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "UIDNEXT"

    const-string v1, "UIDVALIDITY"

    const-string v2, "MESSAGES"

    const-string v3, "RECENT"

    const-string v4, "UNSEEN"

    .line 66
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 59
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    const-wide/16 v1, -0x1

    .line 60
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 61
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 62
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 63
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 71
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->supportsUtf8()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    int-to-char v2, v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const-string v1, "parse error in STATUS"

    if-ne v0, v3, :cond_d

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v2, "MESSAGES"

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    goto :goto_1

    :cond_5
    const-string v2, "RECENT"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    goto :goto_1

    :cond_6
    const-string v2, "UIDNEXT"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 106
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_1

    :cond_7
    const-string v2, "UIDVALIDITY"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_1

    :cond_8
    const-string v2, "UNSEEN"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 110
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    goto :goto_1

    :cond_9
    const-string v2, "HIGHESTMODSEQ"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 112
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    goto :goto_1

    .line 114
    :cond_a
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-nez v2, :cond_b

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    .line 116
    :cond_b
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 116
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/16 v0, 0x29

    .line 119
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 100
    :cond_c
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {p1, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_d
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {p1, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V
    .locals 6

    .line 151
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->total:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 153
    :cond_0
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-eq v0, v1, :cond_1

    .line 154
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 155
    :cond_1
    iget-wide v2, p1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 156
    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 157
    :cond_2
    iget-wide v2, p1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 158
    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 159
    :cond_3
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    if-eq v0, v1, :cond_4

    .line 160
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 161
    :cond_4
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 162
    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 164
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    goto :goto_0

    .line 165
    :cond_6
    iget-object p0, p1, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-eqz p0, :cond_7

    .line 166
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)J
    .locals 2

    .line 130
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const-string v0, "MESSAGES"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget p1, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    :goto_0
    int-to-long v0, p1

    goto :goto_1

    :cond_1
    const-string v0, "RECENT"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget p1, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    goto :goto_0

    :cond_2
    const-string v0, "UIDNEXT"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_1

    :cond_3
    const-string v0, "UIDVALIDITY"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_1

    :cond_4
    const-string v0, "UNSEEN"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    iget p1, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    goto :goto_0

    :cond_5
    const-string v0, "HIGHESTMODSEQ"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    goto :goto_1

    :cond_6
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method
