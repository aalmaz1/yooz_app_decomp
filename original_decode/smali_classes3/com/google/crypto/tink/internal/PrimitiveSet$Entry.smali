.class public final Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrimitiveSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final fullPrimitive:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final key:Lcom/google/crypto/tink/Key;

.field private final keyId:I

.field private final keyTypeUrl:Ljava/lang/String;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

.field private final status:Lcom/google/crypto/tink/proto/KeyStatusType;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;ILjava/lang/String;Lcom/google/crypto/tink/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullPrimitive",
            "outputPrefix",
            "status",
            "outputPrefixType",
            "keyId",
            "keyTypeUrl",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Lcom/google/crypto/tink/proto/KeyStatusType;",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/Key;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->fullPrimitive:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 82
    iput-object p3, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->status:Lcom/google/crypto/tink/proto/KeyStatusType;

    .line 83
    iput-object p4, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 84
    iput p5, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->keyId:I

    .line 85
    iput-object p6, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->keyTypeUrl:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;ILjava/lang/String;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/internal/PrimitiveSet$1;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p7}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;-><init>(Ljava/lang/Object;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;ILjava/lang/String;Lcom/google/crypto/tink/Key;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;)Lcom/google/crypto/tink/util/Bytes;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0
.end method

.method private final getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method


# virtual methods
.method public getFullPrimitive()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->fullPrimitive:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    return-object v0
.end method

.method public getKeyId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->keyId:I

    return v0
.end method

.method public getKeyTypeUrl()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->keyTypeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/Key;->getParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->status:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object v0
.end method
