.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final allowUtf8:Z

.field private static final ignoreBogusGroupName:Z

.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"

.field private static final useCanonicalHostName:Z


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "mail.mime.address.ignorebogusgroupname"

    const/4 v1, 0x1

    .line 86
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    const-string v0, "mail.mime.address.usecanonicalhostname"

    .line 90
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->useCanonicalHostName:Z

    const-string v0, "mail.mime.allowutf8"

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->allowUtf8:Z

    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v2, 0x20

    .line 350
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    const/4 v0, 0x1

    .line 119
    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 121
    array-length v2, v1

    if-ne v2, v0, :cond_1b

    const/4 p1, 0x0

    .line 130
    aget-object p1, v1, p1

    iget-object v0, p1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 132
    iget-object p1, p1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void

    .line 122
    :cond_1b
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 182
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_15

    .line 149
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_10

    .line 150
    invoke-virtual {p0, p2}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    goto :goto_15

    .line 152
    :cond_10
    iget-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {p1, p2, p2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    :cond_15
    :goto_15
    return-void
.end method

.method static _getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljavax/mail/internet/AddressException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "user.name"

    const/4 v1, 0x0

    if-nez p0, :cond_f

    .line 642
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 643
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    goto :goto_50

    :cond_f
    const-string v2, "mail.from"

    .line 645
    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4e

    const-string v3, "mail.user"

    .line 647
    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 648
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_29

    .line 649
    :cond_25
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_29
    if-eqz v3, :cond_34

    .line 650
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_32

    goto :goto_34

    :cond_32
    move-object v0, v3

    goto :goto_38

    .line 651
    :cond_34
    :goto_34
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    const-string v3, "mail.host"

    .line 652
    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4a

    .line 654
    :cond_46
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object p0

    :cond_4a
    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_50

    :cond_4e
    move-object p0, v1

    move-object v0, p0

    :goto_50
    if-nez v2, :cond_83

    if-eqz p0, :cond_83

    .line 658
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_83

    if-eqz v0, :cond_83

    .line 659
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_83

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v3, "()<>,;:\\\"[]@\t "

    invoke-static {p0, v3}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_83
    if-nez v2, :cond_86

    return-object v1

    .line 666
    :cond_86
    new-instance p0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz v0, :cond_1b3

    .line 1273
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1ab

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3b

    .line 1281
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_3b

    move v5, v4

    :goto_17
    const-string v6, ",:"

    .line 1286
    invoke-static {v0, v6, v5}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_3c

    .line 1288
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_33

    .line 1290
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_30

    add-int/lit8 v5, v6, 0x1

    goto :goto_3c

    :cond_30
    add-int/lit8 v5, v6, 0x1

    goto :goto_17

    .line 1289
    :cond_33
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal route-addr"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_3b
    move v5, v4

    :cond_3c
    :goto_3c
    const v6, 0xffff

    move v9, v4

    move v8, v5

    move v7, v6

    :goto_42
    const/16 v10, 0x7f

    const/16 v11, 0x20

    const/16 v12, 0x2e

    if-ge v8, v1, :cond_112

    .line 1311
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v13, 0x5c

    if-eq v7, v13, :cond_10b

    if-ne v6, v13, :cond_56

    goto/16 :goto_10b

    :cond_56
    const/16 v13, 0x22

    if-ne v7, v13, :cond_84

    if-eqz v9, :cond_74

    if-eqz p2, :cond_71

    add-int/lit8 v9, v8, 0x1

    if-ge v9, v1, :cond_71

    .line 1319
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v2, :cond_69

    goto :goto_71

    .line 1320
    :cond_69
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Quote not at end of local address"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_71
    :goto_71
    move v9, v4

    goto/16 :goto_10b

    :cond_74
    if-eqz p2, :cond_81

    if-nez v8, :cond_79

    goto :goto_81

    .line 1325
    :cond_79
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Quote not at start of local address"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_81
    :goto_81
    move v9, v3

    goto/16 :goto_10b

    :cond_84
    const/16 v13, 0xd

    const/16 v14, 0xa

    if-ne v7, v13, :cond_9d

    add-int/lit8 v13, v8, 0x1

    if-ge v13, v1, :cond_d1

    .line 1332
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v14, :cond_95

    goto :goto_d1

    .line 1333
    :cond_95
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Quoted local address contains CR without LF"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_9d
    if-ne v7, v14, :cond_ba

    add-int/lit8 v13, v8, 0x1

    if-ge v13, v1, :cond_d1

    .line 1341
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v11, :cond_d1

    .line 1342
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x9

    if-ne v13, v14, :cond_b2

    goto :goto_d1

    .line 1343
    :cond_b2
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Quoted local address contains newline without whitespace"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_ba
    if-ne v7, v12, :cond_d1

    if-eq v8, v5, :cond_c9

    if-eq v6, v12, :cond_c1

    goto :goto_d1

    .line 1351
    :cond_c1
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Local address contains dot-dot"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_c9
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Local address starts with dot"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_d1
    :goto_d1
    if-eqz v9, :cond_d4

    goto :goto_10b

    :cond_d4
    if-ne v7, v2, :cond_ee

    if-eqz v8, :cond_e6

    if-eq v6, v12, :cond_de

    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_112

    .line 1360
    :cond_de
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Local address ends with dot"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1358
    :cond_e6
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing local name"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_ee
    if-le v7, v11, :cond_103

    if-eq v7, v10, :cond_103

    const-string v10, "()<>,;:\\\"[]@"

    .line 1367
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_fb

    goto :goto_10b

    .line 1368
    :cond_fb
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Local address contains illegal character"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1365
    :cond_103
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Local address contains control or whitespace"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_10b
    :goto_10b
    add-int/lit8 v8, v8, 0x1

    move v15, v7

    move v7, v6

    move v6, v15

    goto/16 :goto_42

    :cond_112
    :goto_112
    if-nez v9, :cond_1a3

    if-eq v6, v2, :cond_121

    if-nez p2, :cond_119

    return-void

    .line 1388
    :cond_119
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing final \'@domain\'"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_121
    add-int/2addr v8, v3

    if-ge v8, v1, :cond_19b

    .line 1398
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v12, :cond_193

    move v5, v4

    move v2, v8

    :goto_12c
    if-ge v2, v1, :cond_188

    .line 1402
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x5b

    if-ne v6, v9, :cond_142

    if-ne v2, v8, :cond_13a

    move v5, v3

    goto :goto_17c

    .line 1405
    :cond_13a
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain literal not at start of domain"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_142
    const/16 v9, 0x5d

    if-ne v6, v9, :cond_154

    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_14c

    move v5, v4

    goto :goto_17c

    .line 1410
    :cond_14c
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain literal end not at end of domain"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_154
    if-le v6, v11, :cond_180

    if-eq v6, v10, :cond_180

    if-nez v5, :cond_17c

    .line 1431
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_16f

    const/16 v9, 0x2d

    if-eq v6, v9, :cond_16f

    if-ne v6, v12, :cond_167

    goto :goto_16f

    .line 1432
    :cond_167
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain contains illegal character"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_16f
    :goto_16f
    if-ne v6, v12, :cond_17c

    if-eq v7, v12, :cond_174

    goto :goto_17c

    .line 1435
    :cond_174
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain contains dot-dot"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_17c
    :goto_17c
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    goto :goto_12c

    .line 1414
    :cond_180
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain contains control or whitespace"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_188
    if-eq v7, v12, :cond_18b

    return-void

    .line 1442
    :cond_18b
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain ends with dot"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1399
    :cond_193
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Domain starts with dot"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1396
    :cond_19b
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing domain"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1372
    :cond_1a3
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Unterminated quote"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1275
    :cond_1ab
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Empty address"

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1272
    :cond_1b3
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Address is null"

    invoke-direct {v0, v1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .registers 1

    .line 625
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLocalHostName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 675
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 678
    sget-boolean v2, Ljavax/mail/internet/InternetAddress;->useCanonicalHostName:Z

    if-eqz v2, :cond_f

    .line 679
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    :cond_f
    if-nez v1, :cond_15

    .line 681
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    :cond_15
    if-nez v1, :cond_1c

    .line 684
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_1c
    if-eqz v1, :cond_3f

    .line 685
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3f

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->isInetAddressLiteral(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3f
    return-object v1
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 1503
    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    const/4 v0, -0x1

    .line 1508
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    if-ge p2, v1, :cond_15

    .line 1510
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_f} :catch_15

    if-ltz v2, :cond_12

    return p2

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :catch_15
    :cond_15
    return v0
.end method

.method private static isInetAddressLiteral(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 703
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_38

    .line 704
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-lt v4, v6, :cond_18

    const/16 v6, 0x39

    if-gt v4, v6, :cond_18

    goto :goto_34

    :cond_18
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_1d

    goto :goto_34

    :cond_1d
    const/16 v6, 0x61

    if-lt v4, v6, :cond_25

    const/16 v6, 0x7a

    if-le v4, v6, :cond_2d

    :cond_25
    const/16 v6, 0x41

    if-lt v4, v6, :cond_2f

    const/16 v6, 0x5a

    if-gt v4, v6, :cond_2f

    :cond_2d
    move v2, v5

    goto :goto_34

    :cond_2f
    const/16 v3, 0x3a

    if-ne v4, v3, :cond_37

    move v3, v5

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_37
    return v0

    :cond_38
    if-eqz v2, :cond_3c

    if-eqz v3, :cond_3d

    :cond_3c
    move v0, v5

    :cond_3d
    return v0
.end method

.method private isSimple()Z
    .registers 3

    .line 1450
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .registers 3

    const-string v0, "\r\n"

    .line 591
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    .line 594
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "\r\n"

    .line 604
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x2

    return p0

    .line 607
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 729
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 752
    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 793
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    .line 799
    :goto_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_1a
    const/16 v16, 0x0

    if-ge v7, v1, :cond_33b

    .line 803
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v2, 0x9

    if-eq v15, v2, :cond_337

    const/16 v2, 0xa

    if-eq v15, v2, :cond_337

    const/16 v2, 0xd

    if-eq v15, v2, :cond_337

    const/16 v2, 0x20

    if-eq v15, v2, :cond_337

    const-string v2, "Missing \'\"\'"

    const/16 v3, 0x22

    if-eq v15, v3, :cond_30c

    const/16 v6, 0x2c

    if-eq v15, v6, :cond_274

    const/16 v6, 0x3e

    if-eq v15, v6, :cond_264

    const/16 v6, 0x5b

    if-eq v15, v6, :cond_237

    const/16 v6, 0x29

    const/16 v3, 0x28

    if-eq v15, v3, :cond_1f4

    if-eq v15, v6, :cond_1e5

    packed-switch v15, :pswitch_data_3cc

    const/4 v3, -0x1

    if-ne v8, v3, :cond_337

    move v2, v3

    goto/16 :goto_269

    :pswitch_55
    const/4 v3, -0x1

    if-eqz v11, :cond_96

    if-eqz v4, :cond_8e

    if-ne v8, v3, :cond_5f

    move v8, v3

    goto/16 :goto_278

    :cond_5f
    if-nez v10, :cond_96

    if-ne v9, v3, :cond_64

    move v9, v7

    .line 872
    :cond_64
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 874
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 875
    invoke-virtual {v6, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v13, :cond_84

    .line 878
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 881
    :cond_84
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    goto :goto_97

    .line 858
    :cond_8e
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Extra route-addr"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_96
    const/4 v12, 0x1

    :goto_97
    add-int/lit8 v3, v7, 0x1

    move v15, v3

    const/4 v6, 0x0

    :goto_9b
    move/from16 v16, v3

    if-ge v15, v1, :cond_c3

    .line 895
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v17, v9

    const/16 v9, 0x22

    if-eq v3, v9, :cond_b9

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_b5

    const/16 v9, 0x5c

    if-eq v3, v9, :cond_b2

    goto :goto_b7

    :cond_b2
    add-int/lit8 v15, v15, 0x1

    goto :goto_b7

    :cond_b5
    if-eqz v6, :cond_c5

    :goto_b7
    const/4 v3, 0x1

    goto :goto_bd

    :cond_b9
    xor-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_b7

    :goto_bd
    add-int/2addr v15, v3

    move/from16 v3, v16

    move/from16 v9, v17

    goto :goto_9b

    :cond_c3
    move/from16 v17, v9

    :cond_c5
    if-eqz v6, :cond_eb

    if-eqz v4, :cond_e5

    move/from16 v2, v16

    :goto_cb
    if-ge v2, v1, :cond_e3

    .line 920
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_db

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    const/16 v6, 0x3e

    goto :goto_e1

    :cond_db
    const/16 v6, 0x3e

    if-ne v3, v6, :cond_e0

    goto :goto_e3

    :cond_e0
    const/4 v3, 0x1

    :goto_e1
    add-int/2addr v2, v3

    goto :goto_cb

    :cond_e3
    :goto_e3
    move v9, v2

    goto :goto_ec

    .line 915
    :cond_e5
    new-instance v1, Ljavax/mail/internet/AddressException;

    invoke-direct {v1, v2, v0, v15}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_eb
    move v9, v15

    :goto_ec
    if-lt v9, v1, :cond_102

    if-eqz v4, :cond_fa

    const/4 v2, -0x1

    if-ne v8, v2, :cond_f4

    move v8, v7

    :cond_f4
    move/from16 v7, v16

    move/from16 v9, v17

    goto/16 :goto_337

    .line 931
    :cond_fa
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'>\'"

    invoke-direct {v1, v2, v0, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_102
    if-nez v10, :cond_10e

    if-ltz v8, :cond_107

    goto :goto_109

    :cond_107
    move v8, v13

    move v7, v14

    :goto_109
    move v14, v7

    move v13, v8

    move/from16 v7, v16

    goto :goto_10f

    :cond_10e
    move v7, v8

    :goto_10f
    move v8, v7

    move v7, v9

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto/16 :goto_338

    :pswitch_115
    const/4 v2, -0x1

    if-ne v8, v2, :cond_11d

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    goto/16 :goto_27a

    :cond_11d
    if-eqz v10, :cond_152

    if-eqz p2, :cond_133

    if-nez p1, :cond_133

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v1, :cond_133

    .line 1031
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_133

    const/4 v2, 0x1

    const/4 v10, 0x0

    goto/16 :goto_338

    .line 1033
    :cond_133
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    add-int/lit8 v3, v7, 0x1

    .line 1035
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1036
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_14c
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    goto/16 :goto_338

    :cond_152
    if-eqz v4, :cond_156

    goto/16 :goto_274

    .line 1045
    :cond_156
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal semicolon, not in group"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_15e
    if-eqz v10, :cond_16b

    if-eqz v4, :cond_163

    goto :goto_16b

    .line 1117
    :cond_163
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Nested group"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_16b
    :goto_16b
    const/4 v2, -0x1

    if-ne v8, v2, :cond_16f

    move v8, v7

    :cond_16f
    if-eqz p2, :cond_1e1

    if-nez p1, :cond_1e1

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v1, :cond_1a3

    .line 1128
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, ")>[]:@\\,."

    .line 1129
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1a3

    const/16 v6, 0x40

    if-eq v2, v6, :cond_188

    goto :goto_1a1

    :cond_188
    add-int/lit8 v6, v7, 0x2

    :goto_18a
    const/16 v12, 0x3b

    if-ge v6, v1, :cond_19f

    .line 1141
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_195

    goto :goto_19f

    .line 1144
    :cond_195
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_19c

    goto :goto_19f

    :cond_19c
    add-int/lit8 v6, v6, 0x1

    goto :goto_18a

    :cond_19f
    :goto_19f
    if-ne v2, v12, :cond_1a3

    :goto_1a1
    goto/16 :goto_32c

    .line 1154
    :cond_1a3
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1155
    sget-boolean v3, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    if-eqz v3, :cond_1de

    const-string v3, "mailto"

    .line 1156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1db

    const-string v3, "From"

    .line 1157
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1db

    const-string v3, "To"

    .line 1158
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1db

    const-string v3, "Cc"

    .line 1159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1db

    const-string v3, "Subject"

    .line 1160
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1db

    const-string v3, "Re"

    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1de

    :cond_1db
    const/4 v8, -0x1

    goto/16 :goto_334

    :cond_1de
    const/4 v10, 0x1

    goto/16 :goto_334

    :cond_1e1
    const/4 v2, 0x1

    const/4 v10, 0x1

    goto/16 :goto_335

    :cond_1e5
    if-eqz v4, :cond_1ec

    const/4 v2, -0x1

    if-ne v8, v2, :cond_337

    goto/16 :goto_269

    .line 847
    :cond_1ec
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'(\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1f4
    const/4 v2, -0x1

    if-ltz v8, :cond_1fa

    if-ne v9, v2, :cond_1fa

    move v9, v7

    :cond_1fa
    add-int/lit8 v7, v7, 0x1

    move v12, v7

    const/4 v2, 0x1

    :goto_1fe
    if-ge v12, v1, :cond_21d

    if-lez v2, :cond_21d

    .line 815
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v3, :cond_216

    if-eq v15, v6, :cond_213

    const/16 v3, 0x5c

    if-eq v15, v3, :cond_210

    :goto_20e
    const/4 v3, 0x1

    goto :goto_219

    :cond_210
    add-int/lit8 v12, v12, 0x1

    goto :goto_20e

    :cond_213
    add-int/lit8 v2, v2, -0x1

    goto :goto_20e

    :cond_216
    add-int/lit8 v2, v2, 0x1

    goto :goto_20e

    :goto_219
    add-int/2addr v12, v3

    const/16 v3, 0x28

    goto :goto_1fe

    :cond_21d
    if-lez v2, :cond_22b

    if-eqz v4, :cond_223

    goto/16 :goto_32c

    .line 832
    :cond_223
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \')\'"

    invoke-direct {v1, v2, v0, v12}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_22b
    add-int/lit8 v2, v12, -0x1

    const/4 v3, -0x1

    if-ne v13, v3, :cond_231

    move v13, v7

    :cond_231
    if-ne v14, v3, :cond_261

    move v7, v2

    move v14, v7

    goto/16 :goto_334

    :cond_237
    const/4 v3, -0x1

    if-ne v8, v3, :cond_23b

    move v8, v7

    :cond_23b
    add-int/lit8 v7, v7, 0x1

    move v2, v7

    :goto_23e
    if-ge v2, v1, :cond_253

    .line 995
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5c

    if-eq v3, v6, :cond_24e

    const/16 v6, 0x5d

    if-eq v3, v6, :cond_253

    :goto_24c
    const/4 v3, 0x1

    goto :goto_251

    :cond_24e
    add-int/lit8 v2, v2, 0x1

    goto :goto_24c

    :goto_251
    add-int/2addr v2, v3

    goto :goto_23e

    :cond_253
    if-lt v2, v1, :cond_261

    if-eqz v4, :cond_259

    goto/16 :goto_32c

    .line 1008
    :cond_259
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v3, "Missing \']\'"

    invoke-direct {v1, v3, v0, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_261
    move v7, v2

    goto/16 :goto_334

    :cond_264
    if-eqz v4, :cond_26c

    const/4 v2, -0x1

    if-ne v8, v2, :cond_337

    :goto_269
    move v8, v7

    goto/16 :goto_337

    .line 954
    :cond_26c
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'<\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_274
    :goto_274
    const/4 v2, -0x1

    if-ne v8, v2, :cond_27e

    move v8, v2

    :goto_278
    move v9, v8

    const/4 v2, 0x1

    :goto_27a
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_338

    :cond_27e
    if-eqz v10, :cond_284

    const/4 v2, 0x1

    const/4 v11, 0x0

    goto/16 :goto_338

    :cond_284
    if-ne v9, v2, :cond_287

    move v9, v7

    .line 1066
    :cond_287
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v12, :cond_2a9

    if-ltz v13, :cond_2a9

    .line 1070
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1071
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2ab

    :cond_2a9
    move-object/from16 v3, v16

    :cond_2ab
    if-eqz p2, :cond_2cc

    if-nez p1, :cond_2cc

    if-eqz v3, :cond_2cc

    const/16 v6, 0x40

    .line 1081
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_2cc

    .line 1082
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2cc

    const/16 v6, 0x21

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2cc

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :cond_2cc
    if-nez v12, :cond_2f2

    if-nez p1, :cond_2f2

    if-eqz p2, :cond_2d3

    goto :goto_2f2

    .line 1097
    :cond_2d3
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1098
    :goto_2d8
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_307

    .line 1099
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 1100
    invoke-static {v2, v6, v6}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1101
    new-instance v8, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v8}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1102
    invoke-virtual {v8, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1103
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d8

    :cond_2f2
    :goto_2f2
    const/4 v6, 0x0

    if-nez v4, :cond_2f8

    .line 1089
    invoke-static {v2, v11, v6}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1090
    :cond_2f8
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1091
    invoke-virtual {v6, v2}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-eqz v3, :cond_304

    .line 1093
    iput-object v3, v6, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 1094
    :cond_304
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_307
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    goto/16 :goto_14c

    :cond_30c
    const/4 v3, -0x1

    if-ne v8, v3, :cond_310

    move v8, v7

    :cond_310
    add-int/lit8 v7, v7, 0x1

    move v3, v7

    :goto_313
    if-ge v3, v1, :cond_328

    .line 968
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0x22

    if-eq v6, v12, :cond_328

    const/16 v15, 0x5c

    if-eq v6, v15, :cond_323

    :goto_321
    const/4 v6, 0x1

    goto :goto_326

    :cond_323
    add-int/lit8 v3, v3, 0x1

    goto :goto_321

    :goto_326
    add-int/2addr v3, v6

    goto :goto_313

    :cond_328
    if-lt v3, v1, :cond_333

    if-eqz v4, :cond_32d

    :goto_32c
    goto :goto_334

    .line 981
    :cond_32d
    new-instance v1, Ljavax/mail/internet/AddressException;

    invoke-direct {v1, v2, v0, v3}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_333
    move v7, v3

    :goto_334
    const/4 v2, 0x1

    :goto_335
    const/4 v12, 0x1

    goto :goto_338

    :cond_337
    :goto_337
    const/4 v2, 0x1

    :goto_338
    add-int/2addr v7, v2

    goto/16 :goto_1a

    :cond_33b
    if-ltz v8, :cond_3c2

    const/4 v2, -0x1

    if-ne v9, v2, :cond_341

    goto :goto_342

    :cond_341
    move v1, v9

    .line 1192
    :goto_342
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v12, :cond_364

    if-ltz v13, :cond_364

    .line 1196
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_366

    :cond_364
    move-object/from16 v0, v16

    :cond_366
    if-eqz p2, :cond_387

    if-nez p1, :cond_387

    if-eqz v0, :cond_387

    const/16 v2, 0x40

    .line 1207
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_387

    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_387

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_387

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    :cond_387
    if-nez v12, :cond_3ad

    if-nez p1, :cond_3ad

    if-eqz p2, :cond_38e

    goto :goto_3ad

    .line 1223
    :cond_38e
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1224
    :goto_393
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3c2

    .line 1225
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1226
    invoke-static {v1, v2, v2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1227
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v3}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1228
    invoke-virtual {v3, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1229
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_393

    :cond_3ad
    :goto_3ad
    const/4 v2, 0x0

    if-nez v4, :cond_3b3

    .line 1215
    invoke-static {v1, v11, v2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1216
    :cond_3b3
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1217
    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-eqz v0, :cond_3bf

    .line 1219
    iput-object v0, v2, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 1220
    :cond_3bf
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_3c2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 1235
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :pswitch_data_3cc
    .packed-switch 0x3a
        :pswitch_15e
        :pswitch_115
        :pswitch_55
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 777
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    const/16 v4, 0x22

    if-ge v2, v0, :cond_5f

    .line 357
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v4, :cond_3a

    if-ne v5, v6, :cond_16

    goto :goto_3a

    :cond_16
    const/16 v4, 0x20

    if-ge v5, v4, :cond_26

    const/16 v4, 0xd

    if-eq v5, v4, :cond_26

    const/16 v4, 0xa

    if-eq v5, v4, :cond_26

    const/16 v4, 0x9

    if-ne v5, v4, :cond_36

    :cond_26
    const/16 v4, 0x7f

    if-lt v5, v4, :cond_2e

    .line 371
    sget-boolean v4, Ljavax/mail/internet/InternetAddress;->allowUtf8:Z

    if-eqz v4, :cond_36

    :cond_2e
    sget-object v4, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 372
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_37

    :cond_36
    const/4 v3, 0x1

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 360
    :cond_3a
    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_44
    if-ge v1, v0, :cond_57

    .line 363
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_4e

    if-ne v3, v6, :cond_51

    .line 366
    :cond_4e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :cond_51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 369
    :cond_57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    if-eqz v3, :cond_77

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 379
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_77
    return-object p0
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_55

    .line 484
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_55

    .line 487
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 489
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_50

    if-eqz v2, :cond_19

    const-string v3, ", "

    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    .line 496
    :cond_19
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p1

    const/16 v5, 0x4c

    if-le v4, v5, :cond_46

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3f

    add-int/lit8 p1, p1, -0x1

    .line 501
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3f

    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3f
    const-string p1, "\r\n\t"

    .line 503
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    .line 506
    :cond_46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {v3, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 510
    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    :goto_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toUnicodeString([Ljavax/mail/Address;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 460
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toUnicodeString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnicodeString([Ljavax/mail/Address;I)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_7f

    .line 545
    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_7f

    .line 548
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 551
    :goto_f
    array-length v4, p0

    if-ge v2, v4, :cond_6a

    if-eqz v2, :cond_1b

    const-string v4, ", "

    .line 553
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    .line 558
    :cond_1b
    aget-object v4, p0, v2

    check-cast v4, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_39

    .line 561
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v4, v3

    move v3, v6

    .line 564
    :cond_39
    invoke-static {v1, v4}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-static {v4}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, p1

    const/16 v6, 0x4c

    if-le v5, v6, :cond_60

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_59

    add-int/lit8 p1, p1, -0x1

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_59

    .line 570
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_59
    const-string p1, "\r\n\t"

    .line 571
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    .line 574
    :cond_60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {v4, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 578
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_7e

    .line 580
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, p1

    :cond_7e
    return-object p0

    :cond_7f
    :goto_7f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "\""

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_52

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_52

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    .line 391
    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 392
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_49

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_49

    add-int/lit8 v3, v3, 0x1

    .line 394
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 395
    :cond_49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v1

    goto :goto_30

    .line 397
    :cond_4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_52
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 194
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetAddress;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 408
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 411
    :cond_6
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 412
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_12

    return v2

    :cond_12
    if-eqz v0, :cond_1b

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v2

    :cond_1b
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1481
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string v2, ";"

    .line 1485
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    return-object v1

    :cond_11
    const/16 v2, 0x3a

    .line 1487
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 1491
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-static {v0, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 278
    :cond_5
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 280
    :try_start_9
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 286
    :catch_10
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 425
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 428
    :cond_6
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .registers 3

    .line 1464
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v1, ";"

    .line 1465
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 252
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 254
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_e

    :cond_b
    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    :goto_e
    return-void
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 232
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 234
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_e

    .line 236
    :cond_c
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    :goto_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 302
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    .line 303
    :cond_6
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v1, :cond_14

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 305
    :try_start_e
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_14} :catch_14

    .line 308
    :catch_14
    :cond_14
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const-string v2, ">"

    if-eqz v1, :cond_3c

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_3c
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_5c

    .line 313
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .registers 4

    .line 324
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    if-eqz v0, :cond_2a

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_2a
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_4d

    .line 330
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_4d
    :goto_4d
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1250
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1251
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    goto :goto_12

    .line 1253
    :cond_b
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    :goto_12
    return-void
.end method
