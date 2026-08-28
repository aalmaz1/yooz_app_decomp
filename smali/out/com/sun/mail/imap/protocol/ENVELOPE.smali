.class public Lcom/sun/mail/imap/protocol/ENVELOPE;
.super Ljava/lang/Object;
.source "ENVELOPE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static final mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C

.field private static final parseDebug:Z


# instance fields
.field public bcc:[Ljavax/mail/internet/InternetAddress;

.field public cc:[Ljavax/mail/internet/InternetAddress;

.field public date:Ljava/util/Date;

.field public from:[Ljavax/mail/internet/InternetAddress;

.field public inReplyTo:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public msgno:I

.field public replyTo:[Ljavax/mail/internet/InternetAddress;

.field public sender:[Ljavax/mail/internet/InternetAddress;

.field public subject:Ljava/lang/String;

.field public to:[Ljavax/mail/internet/InternetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 65
    fill-array-data v0, :array_1a

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    .line 80
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    const-string v0, "mail.imap.parse.debug"

    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    return-void

    :array_1a
    .array-data 2
        0x45s
        0x4es
        0x56s
        0x45s
        0x4cs
        0x4fs
        0x50s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    .line 87
    sget-boolean v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v0, :cond_11

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "parse ENVELOPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    :cond_11
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->msgno:I

    .line 91
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 93
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_115

    .line 96
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 99
    :try_start_28
    sget-object v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v1
    :try_end_2b
    .catch Ljava/text/ParseException; {:try_start_28 .. :try_end_2b} :catch_36

    .line 100
    :try_start_2b
    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    .line 101
    monitor-exit v1

    goto :goto_36

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/text/ParseException; {:try_start_35 .. :try_end_36} :catch_36

    .line 105
    :catch_36
    :cond_36
    :goto_36
    sget-boolean v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v0, :cond_50

    .line 106
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Date: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_50
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    if-eqz v0, :cond_6e

    .line 110
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Subject: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6e
    if-eqz v0, :cond_77

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  From addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    :cond_77
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_86

    .line 115
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Sender addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_86
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_95

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Reply-To addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_95
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_a4

    .line 121
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  To addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    :cond_a4
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_b3

    .line 124
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Cc addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    :cond_b3
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_c2

    .line 127
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Bcc addresses:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_c2
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    .line 129
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    if-eqz v0, :cond_e6

    .line 131
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  In-Reply-To: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    :cond_e6
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_104

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Message-ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_104
    const/16 v0, 0x29

    .line 136
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result p1

    if-eqz p1, :cond_10d

    return-void

    .line 137
    :cond_10d
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "ENVELOPE parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_115
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "ENVELOPE parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 144
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-ne v0, v1, :cond_53

    const/16 v1, 0x29

    .line 151
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object v2

    .line 154
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :cond_1a
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 158
    sget-boolean v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseDebug:Z

    if-eqz v2, :cond_37

    .line 159
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    Address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :cond_37
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v2

    if-nez v2, :cond_40

    .line 162
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_40
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 165
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/internet/InternetAddress;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/internet/InternetAddress;

    return-object p1

    :cond_53
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_64

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_5c

    goto :goto_64

    .line 170
    :cond_5c
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "ADDRESS parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    :goto_64
    const/4 v0, 0x2

    .line 167
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    return-object v2
.end method
