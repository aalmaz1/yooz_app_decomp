.class public final Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "JwtEcdsaPublicKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomKid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKidOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 309
    new-instance v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;-><init>()V

    .line 312
    sput-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    .line 313
    const-class v1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->value_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
    .registers 1

    .line 48
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->clearValue()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->setValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method private clearValue()V
    .registers 2

    .line 90
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->value_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
    .registers 1

    .line 318
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;
    .registers 1

    .line 180
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 156
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 163
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 119
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 126
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 168
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 175
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 143
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 150
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 106
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 113
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 131
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
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

    .line 138
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;",
            ">;"
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->value_:Ljava/lang/String;

    return-void
.end method

.method private setValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->value_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 261
    sget-object p2, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_52

    .line 302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 296
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 281
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 283
    const-class p2, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    monitor-enter p2

    .line 284
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 286
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 289
    sput-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 291
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

    .line 278
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    return-object p1

    :pswitch_36
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 274
    sget-object p3, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 266
    :pswitch_46
    new-instance p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;-><init>(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$1;)V

    return-object p1

    .line 263
    :pswitch_4c
    new-instance p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;-><init>()V

    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
