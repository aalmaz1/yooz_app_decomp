.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;
.source "BODYSTRUCTURE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static MULTI:I

.field private static NESTED:I

.field private static SINGLE:I

.field static final name:[C

.field private static final parseDebug:Z


# instance fields
.field public attachment:Ljava/lang/String;

.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field public cParams:Ljavax/mail/internet/ParameterList;

.field public dParams:Ljavax/mail/internet/ParameterList;

.field public description:Ljava/lang/String;

.field public disposition:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field public id:Ljava/lang/String;

.field public language:[Ljava/lang/String;

.field public lines:I

.field public md5:Ljava/lang/String;

.field public msgno:I

.field private processedType:I

.field public size:I

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    new-array v0, v0, [C

    .line 58
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    const/4 v0, 0x1

    .line 79
    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    const/4 v0, 0x2

    .line 80
    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    const/4 v0, 0x3

    .line 81
    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    const-string v0, "mail.imap.parse.debug"

    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    return-void

    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
        0x53s
        0x54s
        0x52s
        0x55s
        0x43s
        0x54s
        0x55s
        0x52s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 65
    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 66
    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 90
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_0

    .line 91
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    if-eqz v2, :cond_1

    .line 94
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: msgno "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_43

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    const-string v5, "DEBUG IMAP: language "

    const-string v6, "DEBUG IMAP: language len "

    const-string v7, "DEBUG IMAP: disposition DONE"

    const-string v8, "DEBUG IMAP: disposition "

    const-string v9, "DEBUG IMAP: disposition NIL"

    const/16 v10, 0x6e

    const/16 v11, 0x4e

    const-string v12, "DEBUG IMAP: parse DONE"

    const-string v13, "DEBUG IMAP: subtype "

    const/4 v14, 0x1

    const/16 v15, 0x29

    if-ne v3, v4, :cond_19

    if-eqz v2, :cond_2

    .line 104
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const-string v2, "multipart"

    .line 105
    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 106
    sget v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    :cond_3
    new-instance v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    if-eq v2, v4, :cond_3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 124
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_4

    .line 125
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_4
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    .line 129
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 136
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v3, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 139
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    .line 141
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    return-void

    .line 146
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_d

    if-eqz v2, :cond_a

    .line 149
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: parse disposition"

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 153
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 156
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_14

    .line 161
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_c
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eq v3, v11, :cond_12

    if-ne v3, v10, :cond_e

    goto :goto_1

    :cond_e
    if-eqz v2, :cond_f

    .line 174
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: bad multipart disposition, applying Exchange bug workaround"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 178
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG IMAP: multipart description "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_10
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_11

    .line 183
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_0

    :cond_11
    return-void

    :cond_12
    :goto_1
    if-eqz v2, :cond_13

    .line 164
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    const/4 v3, 0x3

    .line 165
    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 189
    :cond_14
    :goto_2
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v2, :cond_15

    .line 191
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    return-void

    .line 196
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_17

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 199
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 202
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    .line 205
    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 207
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    :cond_18
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3f

    .line 216
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_3

    .line 217
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-eq v3, v15, :cond_42

    if-eqz v2, :cond_1a

    .line 240
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "DEBUG IMAP: single part"

    invoke-virtual {v3, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 243
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: type "

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    :cond_1b
    sget v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 247
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    :cond_1c
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v3, :cond_1d

    const-string v3, "application"

    .line 251
    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v3, "octet-stream"

    .line 252
    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 254
    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v2, :cond_1e

    .line 256
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: cParams "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 259
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: id "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 262
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: description "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readAtomString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_22

    const-string v10, "NIL"

    .line 268
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v2, :cond_21

    .line 270
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG IMAP: NIL encoding, applying Exchange bug workaround"

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21
    const/4 v3, 0x0

    .line 272
    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 278
    :cond_22
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 279
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    :cond_23
    if-eqz v2, :cond_24

    .line 281
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: encoding "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-eqz v2, :cond_25

    .line 284
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: size "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    :cond_25
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-ltz v3, :cond_41

    .line 290
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v10, "text"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    const-string v13, "/"

    const-string v14, "DEBUG IMAP: lines "

    if-eqz v3, :cond_28

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-eqz v2, :cond_26

    .line 293
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    :cond_26
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v3, :cond_27

    goto/16 :goto_4

    .line 295
    :cond_27
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v1, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_28
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v11, "message"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v11, "rfc822"

    .line 298
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 300
    sget v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_2c

    .line 307
    new-instance v3, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v2, :cond_29

    .line 309
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "DEBUG IMAP: got envelope of nested message"

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29
    const/4 v3, 0x1

    new-array v11, v3, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 311
    new-instance v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    const/16 v16, 0x0

    aput-object v3, v11, v16

    .line 312
    iput-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-eqz v2, :cond_2a

    .line 315
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :cond_2a
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v3, :cond_2b

    goto :goto_4

    .line 317
    :cond_2b
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v1, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    if-eqz v2, :cond_2e

    .line 321
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG IMAP: missing envelope and body of nested message"

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 326
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    int-to-char v3, v3

    .line 328
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_40

    .line 335
    :cond_2e
    :goto_4
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz v2, :cond_2f

    .line 337
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2f
    return-void

    .line 344
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v2, :cond_31

    .line 347
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_31
    return-void

    .line 352
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_36

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 356
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    :cond_33
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v2, :cond_34

    .line 360
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG IMAP: dParams "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_34
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_6

    .line 362
    :cond_35
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    const/16 v8, 0x4e

    if-eq v3, v8, :cond_38

    const/16 v8, 0x6e

    if-ne v3, v8, :cond_37

    goto :goto_5

    .line 370
    :cond_37
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "BODYSTRUCTURE parse error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": bad single part disposition, b "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_5
    if-eqz v2, :cond_39

    .line 367
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    const/4 v3, 0x2

    .line 368
    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 376
    :goto_6
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz v2, :cond_3a

    .line 378
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3a
    return-void

    .line 383
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_3c

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 386
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 389
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    .line 392
    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 394
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    :cond_3d
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3e

    .line 403
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_7

    .line 404
    :cond_3e
    sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v1, :cond_3f

    .line 405
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: all DONE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3f
    return-void

    .line 329
    :cond_40
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_41
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_42
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing body content"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_43
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 463
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 467
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    const/16 v0, 0x29

    .line 468
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    int-to-char v0, v0

    .line 469
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 426
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_6

    .line 428
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 430
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1

    .line 432
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: parameter name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_5

    .line 438
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 440
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    .line 443
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: NIL parameter value, applying Exchange bug workaround"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const-string v3, ""

    .line 447
    :cond_4
    invoke-virtual {v0, v1, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x29

    .line 448
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList;->combineSegments()V

    goto :goto_1

    .line 434
    :cond_5
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODYSTRUCTURE parse error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": null name in parameter list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 455
    :cond_7
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "Parameter list parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_8
    :goto_0
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_9

    .line 452
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x2

    .line 453
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public isMulti()Z
    .locals 2

    .line 410
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNested()Z
    .locals 2

    .line 418
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingle()Z
    .locals 2

    .line 414
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
