.class public Lcom/tekartik/sqflite/SqlCommand;
.super Ljava/lang/Object;
.source "SqlCommand.java"


# instance fields
.field private final rawArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    if-nez p2, :cond_c

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :cond_c
    iput-object p2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    return-void
.end method

.method private getSqlArguments(Ljava/util/List;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1d

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/tekartik/sqflite/SqlCommand;->toValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static toValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_28

    .line 29
    check-cast p0, Ljava/util/List;

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 31
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 32
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    move-object p0, v0

    :cond_28
    return-object p0
.end method


# virtual methods
.method public bindTo(Landroid/database/sqlite/SQLiteProgram;)V
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    if-eqz v0, :cond_97

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_97

    .line 58
    iget-object v2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tekartik/sqflite/SqlCommand;->toValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-nez v2, :cond_1d

    .line 63
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_70

    .line 64
    :cond_1d
    instance-of v4, v2, [B

    if-eqz v4, :cond_27

    .line 65
    check-cast v2, [B

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_70

    .line 66
    :cond_27
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_35

    .line 67
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_70

    .line 68
    :cond_35
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_44

    .line 69
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_70

    .line 70
    :cond_44
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_52

    .line 71
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_70

    .line 72
    :cond_52
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_5c

    .line 73
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_70

    .line 74
    :cond_5c
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_72

    .line 75
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6b

    const-wide/16 v1, 0x1

    goto :goto_6d

    :cond_6b
    const-wide/16 v1, 0x0

    :goto_6d
    invoke-virtual {p1, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :goto_70
    move v1, v3

    goto :goto_9

    .line 77
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Could not bind "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Supported types are null, byte[], double, long, boolean and String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_97
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 105
    instance-of v0, p1, Lcom/tekartik/sqflite/SqlCommand;

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 106
    check-cast p1, Lcom/tekartik/sqflite/SqlCommand;

    .line 107
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 108
    iget-object v2, p1, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 112
    :cond_14
    iget-object v0, p1, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    if-eqz v0, :cond_19

    return v1

    .line 117
    :cond_19
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_28

    return v1

    :cond_28
    move v0, v1

    .line 120
    :goto_29
    iget-object v2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_72

    .line 122
    iget-object v2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [B

    if-eqz v2, :cond_5c

    iget-object v2, p1, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [B

    if-eqz v2, :cond_5c

    .line 123
    iget-object v2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p1, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6f

    return v1

    .line 127
    :cond_5c
    iget-object v2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    return v1

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_72
    const/4 p1, 0x1

    return p1

    :cond_74
    return v1
.end method

.method public getRawSqlArguments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlArguments()[Ljava/lang/Object;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tekartik/sqflite/SqlCommand;->getSqlArguments(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tekartik/sqflite/SqlCommand;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_28

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tekartik/sqflite/SqlCommand;->rawArguments:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_28
    :goto_28
    const-string v1, ""

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
