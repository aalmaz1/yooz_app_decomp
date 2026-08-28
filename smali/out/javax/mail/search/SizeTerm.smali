.class public final Ljavax/mail/search/SizeTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "SizeTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x2379840c191a6e5dL


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Ljavax/mail/search/IntegerComparisonTerm;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 92
    instance-of v0, p1, Ljavax/mail/search/SizeTerm;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 4

    const/4 v0, 0x0

    .line 76
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_e

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    return v0

    .line 84
    :cond_9
    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z

    move-result p1

    return p1

    :catch_e
    return v0
.end method
