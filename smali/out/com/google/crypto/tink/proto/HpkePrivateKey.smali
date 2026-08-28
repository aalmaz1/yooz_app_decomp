.class public final Lcom/google/crypto/tink/proto/HpkePrivateKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "HpkePrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HpkePrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/HpkePrivateKey;",
        "Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HpkePrivateKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HpkePrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x3

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private privateKey_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 408
    new-instance v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;-><init>()V

    .line 411
    sput-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    .line 412
    const-class v1, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 17
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->privateKey_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/HpkePrivateKey;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/HpkePrivateKey;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/HpkePrivateKey;Lcom/google/crypto/tink/proto/HpkePublicKey;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->setPublicKey(Lcom/google/crypto/tink/proto/HpkePublicKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/HpkePrivateKey;Lcom/google/crypto/tink/proto/HpkePublicKey;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->mergePublicKey(Lcom/google/crypto/tink/proto/HpkePublicKey;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/HpkePrivateKey;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->clearPublicKey()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/HpkePrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->setPrivateKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/HpkePrivateKey;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->clearPrivateKey()V

    return-void
.end method

.method private clearPrivateKey()V
    .registers 2

    .line 131
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/HpkePrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getPrivateKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->privateKey_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearPublicKey()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    .line 89
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 1

    .line 417
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object v0
.end method

.method private mergePublicKey(Lcom/google/crypto/tink/proto/HpkePublicKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    if-eqz v0, :cond_22

    .line 77
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    .line 79
    invoke-static {v0}, Lcom/google/crypto/tink/proto/HpkePublicKey;->newBuilder(Lcom/google/crypto/tink/proto/HpkePublicKey;)Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/HpkePublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    goto :goto_24

    .line 81
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    .line 83
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;
    .registers 1

    .line 211
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/HpkePrivateKey;)Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HpkePrivateKey;",
            ">;"
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPrivateKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->privateKey_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setPublicKey(Lcom/google/crypto/tink/proto/HpkePublicKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    .line 68
    iget p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    return-void
.end method

.method private setVersion(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 356
    sget-object p2, Lcom/google/crypto/tink/proto/HpkePrivateKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_62

    .line 401
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 395
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 380
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 382
    const-class p2, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    monitor-enter p2

    .line 383
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 385
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 388
    sput-object p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 390
    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    .line 377
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "publicKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

    .line 373
    sget-object p3, Lcom/google/crypto/tink/proto/HpkePrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 361
    :pswitch_55
    new-instance p1, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;-><init>(Lcom/google/crypto/tink/proto/HpkePrivateKey$1;)V

    return-object p1

    .line 358
    :pswitch_5b
    new-instance p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_55
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->privateKey_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/HpkePublicKey;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/HpkePublicKey;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->version_:I

    return v0
.end method

.method public hasPublicKey()Z
    .registers 3

    .line 53
    iget v0, p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
