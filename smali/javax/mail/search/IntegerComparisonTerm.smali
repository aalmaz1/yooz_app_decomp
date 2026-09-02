.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "IntegerComparisonTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x60a39325f9860814L


# instance fields
.field protected number:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    .line 60
    iput p1, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    .line 61
    iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 106
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 108
    :cond_6
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    .line 109
    iget v0, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne v0, v2, :cond_16

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public getComparison()I
    .registers 2

    .line 79
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    return v0
.end method

.method public getNumber()I
    .registers 2

    .line 70
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 117
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(I)Z
    .registers 5

    .line 83
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_32

    return v2

    .line 95
    :pswitch_8
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-lt p1, v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 93
    :pswitch_f
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-le p1, v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1

    .line 91
    :pswitch_16
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-eq p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 89
    :pswitch_1d
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne p1, v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1

    .line 87
    :pswitch_24
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ge p1, v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1

    .line 85
    :pswitch_2b
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-gt p1, v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method
