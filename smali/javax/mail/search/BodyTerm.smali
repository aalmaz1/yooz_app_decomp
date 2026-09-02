.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "BodyTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private matchPart(Ljavax/mail/Part;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "text/*"

    .line 89
    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 90
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_12

    return v0

    .line 101
    :cond_12
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_17
    const-string v1, "multipart/*"

    .line 102
    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 103
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Multipart;

    .line 104
    invoke-virtual {p1}, Ljavax/mail/Multipart;->getCount()I

    move-result v1

    move v2, v0

    :goto_2a
    if-ge v2, v1, :cond_4e

    .line 106
    invoke-virtual {p1, v2}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3b
    const-string v1, "message/rfc822"

    .line 108
    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 109
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Part;

    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result p1
    :try_end_4d
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4d} :catch_4e

    return p1

    :catch_4e
    :cond_4e
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 123
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result p1

    return p1
.end method
