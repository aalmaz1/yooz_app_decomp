.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 81
    invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private static isTokenChar(C)Z
    .registers 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_12

    const-string v0, "()<>@,;:/[]?=\\\""

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_18

    if-nez v3, :cond_18

    .line 303
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    if-eqz v3, :cond_48

    .line 307
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    const/16 v3, 0x22

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2c
    if-ge v1, v0, :cond_41

    .line 315
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_38

    if-ne v4, v3, :cond_3b

    .line 317
    :cond_38
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 318
    :cond_3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 322
    :cond_41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_48
    return-object p0
.end method

.method private static skipWhiteSpace(Ljava/lang/String;I)I
    .registers 4

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_13

    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_13
    return p1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 336
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_f
    if-ge v3, v0, :cond_2a

    .line 341
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v4, :cond_1f

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1f

    .line 343
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_27

    :cond_1f
    if-eqz v4, :cond_26

    .line 345
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v2

    goto :goto_27

    :cond_26
    const/4 v4, 0x1

    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 352
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 222
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNames()Ljava/util/Enumeration;
    .registers 2

    .line 251
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 211
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected parse(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 100
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    :goto_f
    if-ge v1, v0, :cond_e3

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_e3

    add-int/lit8 v1, v1, 0x1

    .line 113
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v0, :cond_22

    return-void

    :cond_22
    move v2, v1

    :goto_23
    if-ge v2, v0, :cond_32

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_32

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 124
    :cond_32
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {p1, v2}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v0, :cond_db

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_db

    add-int/lit8 v2, v2, 0x1

    .line 137
    invoke-static {p1, v2}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v0, :cond_c6

    .line 144
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_8c

    add-int/lit8 v2, v2, 0x1

    const-string v5, "Encountered unterminated quoted parameter value."

    if-ge v2, v0, :cond_86

    move v6, v2

    :goto_61
    if-ge v6, v0, :cond_73

    .line 156
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_6a

    goto :goto_73

    :cond_6a
    const/16 v7, 0x5c

    if-ne v3, v7, :cond_70

    add-int/lit8 v6, v6, 0x1

    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_73
    :goto_73
    if-ne v3, v4, :cond_80

    .line 171
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_a6

    .line 168
    :cond_80
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    invoke-direct {p1, v5}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_86
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    invoke-direct {p1, v5}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_8c
    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_b1

    move v6, v2

    :goto_93
    if-ge v6, v0, :cond_a2

    .line 178
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_a2

    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    .line 180
    :cond_a2
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 188
    :goto_a6
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1, v6}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_f

    .line 183
    :cond_b1
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character encountered at index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_c6
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find a value for parameter named "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_db
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    const-string v0, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {p1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e3
    if-lt v1, v0, :cond_e6

    return-void

    .line 191
    :cond_e6
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    const-string v0, "More characters encountered in input than expected."

    invoke-direct {p1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .line 242
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 233
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    .line 202
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 262
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 263
    :goto_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 264
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "; "

    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 271
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
