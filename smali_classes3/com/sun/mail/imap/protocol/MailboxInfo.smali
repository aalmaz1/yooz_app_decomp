.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public highestmodseq:J

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/mail/imap/protocol/IMAPResponse;",
            ">;"
        }
    .end annotation
.end field

.field public total:I

.field public uidNotSticky:Z

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 61
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    const/4 v1, -0x1

    .line 63
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 65
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 67
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    const-wide/16 v1, -0x1

    .line 69
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    .line 71
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    const/4 v3, 0x0

    .line 73
    iput-boolean v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidNotSticky:Z

    .line 75
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    move v1, v3

    .line 89
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 90
    aget-object v2, p1, v1

    if-eqz v2, :cond_13

    instance-of v4, v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 93
    :cond_0
    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v4, "EXISTS"

    .line 95
    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 97
    aput-object v0, p1, v1

    goto/16 :goto_3

    :cond_1
    const-string v4, "RECENT"

    .line 98
    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 100
    aput-object v0, p1, v1

    goto/16 :goto_3

    :cond_2
    const-string v4, "FLAGS"

    .line 101
    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 103
    aput-object v0, p1, v1

    goto/16 :goto_3

    :cond_3
    const-string v4, "VANISHED"

    .line 104
    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 105
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-nez v4, :cond_4

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    .line 107
    :cond_4
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    aput-object v0, p1, v1

    goto/16 :goto_3

    :cond_5
    const-string v4, "FETCH"

    .line 109
    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 110
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-nez v4, :cond_6

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    .line 112
    :cond_6
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    aput-object v0, p1, v1

    goto/16 :goto_3

    .line 114
    :cond_7
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v4

    const/16 v5, 0x5b

    const/4 v6, 0x1

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 123
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 125
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v4

    if-eq v4, v5, :cond_8

    .line 126
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto/16 :goto_3

    .line 131
    :cond_8
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNSEEN"

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 133
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    goto :goto_1

    :cond_9
    const-string v5, "UIDVALIDITY"

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 135
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_1

    :cond_a
    const-string v5, "PERMANENTFLAGS"

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 137
    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_1

    :cond_b
    const-string v5, "UIDNEXT"

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 139
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    goto :goto_1

    :cond_c
    const-string v5, "HIGHESTMODSEQ"

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 141
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    goto :goto_1

    :cond_d
    move v6, v3

    :goto_1
    if-eqz v6, :cond_e

    .line 146
    aput-object v0, p1, v1

    goto :goto_3

    .line 148
    :cond_e
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto :goto_3

    .line 149
    :cond_f
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 154
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 156
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v4

    if-eq v4, v5, :cond_10

    .line 157
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto :goto_3

    .line 162
    :cond_10
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UIDNOTSTICKY"

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 164
    iput-boolean v6, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidNotSticky:Z

    goto :goto_2

    :cond_11
    move v6, v3

    :goto_2
    if-eqz v6, :cond_12

    .line 169
    aput-object v0, p1, v1

    goto :goto_3

    .line 171
    :cond_12
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    :cond_13
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 180
    :cond_14
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez p1, :cond_16

    .line 181
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz p1, :cond_15

    .line 182
    new-instance p1, Ljavax/mail/Flags;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    invoke-direct {p1, v0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_4

    .line 184
    :cond_15
    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    :cond_16
    :goto_4
    return-void
.end method
