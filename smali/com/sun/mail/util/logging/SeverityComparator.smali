.class public Lcom/sun/mail/util/logging/SeverityComparator;
.super Ljava/lang/Object;
.source "SeverityComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/logging/LogRecord;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x245dae569ea8fc5dL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/sun/mail/util/logging/SeverityComparator;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/SeverityComparator;-><init>()V

    sput-object v0, Lcom/sun/mail/util/logging/SeverityComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compare(JJ)I
    .registers 5

    cmp-long p1, p1, p3

    if-gez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_b

    :cond_6
    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private compare(Ljava/util/logging/Level;Ljava/util/logging/Level;)I
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    goto :goto_12

    .line 331
    :cond_4
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(JJ)I

    move-result p1

    :goto_12
    return p1
.end method

.method static getInstance()Lcom/sun/mail/util/logging/SeverityComparator;
    .registers 1

    .line 115
    sget-object v0, Lcom/sun/mail/util/logging/SeverityComparator;->INSTANCE:Ljava/util/Comparator;

    check-cast v0, Lcom/sun/mail/util/logging/SeverityComparator;

    return-object v0
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move v1, v0

    move-object v0, p1

    :goto_6
    if-eqz p1, :cond_25

    .line 139
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v2, p1

    :cond_f
    if-nez v2, :cond_16

    .line 144
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_16

    move-object v3, p1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    const/high16 v0, 0x10000

    if-ne v1, v0, :cond_1d

    goto :goto_26

    .line 135
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_6

    :cond_25
    move-object p1, v0

    :goto_26
    if-eqz v3, :cond_2a

    move-object p1, v3

    goto :goto_2d

    :cond_2a
    if-eqz v2, :cond_2d

    move-object p1, v2

    :cond_2d
    :goto_2d
    return-object p1
.end method

.method public final applyThenCompare(Ljava/lang/Throwable;Ljava/lang/Throwable;)I
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    goto :goto_10

    .line 168
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->compareThrowable(Ljava/lang/Throwable;Ljava/lang/Throwable;)I

    move-result p1

    :goto_10
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 92
    check-cast p1, Ljava/util/logging/LogRecord;

    check-cast p2, Ljava/util/logging/LogRecord;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)I
    .registers 7

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    if-ne p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    .line 250
    :cond_8
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(Ljava/util/logging/Level;Ljava/util/logging/Level;)I

    move-result v0

    if-nez v0, :cond_3e

    .line 252
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/logging/SeverityComparator;->applyThenCompare(Ljava/lang/Throwable;Ljava/lang/Throwable;)I

    move-result v0

    if-nez v0, :cond_3e

    .line 254
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_3e

    .line 256
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(JJ)I

    move-result v0

    :cond_3e
    return v0

    .line 239
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareThrowable(Ljava/lang/Throwable;Ljava/lang/Throwable;)I
    .registers 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_11

    .line 190
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    :cond_11
    if-nez p2, :cond_1b

    .line 193
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 199
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_26

    return v0

    .line 204
    :cond_26
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 205
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    return v0

    .line 207
    :cond_35
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3c

    return v1

    .line 215
    :cond_3c
    instance-of v3, p1, Ljava/lang/Error;

    if-eqz v3, :cond_44

    .line 216
    instance-of p1, p2, Ljava/lang/Error;

    xor-int/2addr p1, v1

    return p1

    .line 217
    :cond_44
    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_55

    .line 218
    instance-of p1, p2, Ljava/lang/Error;

    if-eqz p1, :cond_4e

    move v0, v2

    goto :goto_54

    :cond_4e
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    :goto_54
    return v0

    .line 221
    :cond_55
    instance-of p1, p2, Ljava/lang/Error;

    if-nez p1, :cond_5d

    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_5e

    :cond_5d
    move v0, v2

    :cond_5e
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_f

    .line 272
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isNormal(Ljava/lang/Throwable;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 305
    :cond_4
    const-class v1, Ljava/lang/Throwable;

    .line 306
    const-class v2, Ljava/lang/Error;

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_c
    if-eq p1, v1, :cond_34

    .line 308
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_22

    .line 309
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.ThreadDeath"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v4

    .line 314
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Interrupt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v4

    .line 307
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_c

    :cond_34
    return v0
.end method
