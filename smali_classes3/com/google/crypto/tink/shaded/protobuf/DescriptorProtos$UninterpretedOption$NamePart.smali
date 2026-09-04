.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamePart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

.field public static final IS_EXTENSION_FIELD_NUMBER:I = 0x2

.field public static final NAME_PART_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private isExtension_:Z

.field private memoizedIsInitialized:B

.field private namePart_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23538
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    .line 23541
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 23542
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23196
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 23480
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23197
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$49200()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .line 23191
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method static synthetic access$49300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Ljava/lang/String;)V
    .locals 0

    .line 23191
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->setNamePart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$49400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V
    .locals 0

    .line 23191
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->clearNamePart()V

    return-void
.end method

.method static synthetic access$49500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 23191
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->setNamePartBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$49600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)V
    .locals 0

    .line 23191
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->setIsExtension(Z)V

    return-void
.end method

.method static synthetic access$49700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V
    .locals 0

    .line 23191
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->clearIsExtension()V

    return-void
.end method

.method private clearIsExtension()V
    .locals 1

    .line 23284
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    const/4 v0, 0x0

    .line 23285
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    return-void
.end method

.method private clearNamePart()V
    .locals 1

    .line 23241
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 23242
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .line 23547
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    .line 23365
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 23368
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23341
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23348
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23304
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23311
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23353
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23360
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23328
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23335
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23291
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23298
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23316
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
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

    .line 23323
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .line 23553
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIsExtension(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23277
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 23278
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    return-void
.end method

.method private setNamePart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23234
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 23235
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;

    return-void
.end method

.method private setNamePartBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23250
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;

    .line 23251
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 23486
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23531
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 23527
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->memoizedIsInitialized:B

    return-object v1

    .line 23524
    :pswitch_1
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23509
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2

    .line 23511
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    monitor-enter p2

    .line 23512
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 23514
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 23517
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 23519
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 23506
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "namePart_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "isExtension_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1508\u0000\u0002\u1507\u0001"

    .line 23502
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23491
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 23488
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIsExtension()Z
    .locals 1

    .line 23270
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    return v0
.end method

.method public getNamePart()Ljava/lang/String;
    .locals 1

    .line 23216
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePartBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 23225
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasIsExtension()Z
    .locals 1

    .line 23262
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNamePart()Z
    .locals 2

    .line 23208
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
