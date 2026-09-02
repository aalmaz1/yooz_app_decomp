.class public final Ljavax/mail/search/MessageIDTerm;
.super Ljavax/mail/search/StringTerm;
.source "MessageIDTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1d6fa5d7f4941c7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 101
    instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Message-ID"

    .line 82
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_1b

    if-nez p1, :cond_a

    return v0

    :cond_a
    move v1, v0

    .line 90
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 91
    aget-object v2, p1, v1

    invoke-super {p0, v2}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_1b
    :cond_1b
    return v0
.end method
