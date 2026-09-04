.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x2

.field public static final FIELD_PRESENCE_FIELD_NUMBER:I = 0x1

.field public static final JSON_FORMAT_FIELD_NUMBER:I = 0x6

.field public static final MESSAGE_ENCODING_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPEATED_FIELD_ENCODING_FIELD_NUMBER:I = 0x3

.field public static final UTF8_VALIDATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private enumType_:I

.field private fieldPresence_:I

.field private jsonFormat_:I

.field private memoizedIsInitialized:B

.field private messageEncoding_:I

.field private repeatedFieldEncoding_:I

.field private utf8Validation_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25684
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;-><init>()V

    .line 25687
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25688
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24520
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    .line 25615
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$52100()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 24515
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object v0
.end method

.method static synthetic access$52200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V
    .locals 0

    .line 24515
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->setFieldPresence(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V

    return-void
.end method

.method static synthetic access$52300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 24515
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->clearFieldPresence()V

    return-void
.end method

.method static synthetic access$52400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;)V
    .locals 0

    .line 24515
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->setEnumType(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;)V

    return-void
.end method

.method static synthetic access$52500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 24515
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->clearEnumType()V

    return-void
.end method

.method static synthetic access$52600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V
    .locals 0

    .line 24515
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->setRepeatedFieldEncoding(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V

    return-void
.end method

.method static synthetic access$52700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 24515
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->clearRepeatedFieldEncoding()V

    return-void
.end method

.method static synthetic access$52800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V
    .locals 0

    .line 24515
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->setUtf8Validation(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V

    return-void
.end method

.method static synthetic access$52900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 24515
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->clearUtf8Validation()V

    return-void
.end method

.method static synthetic access$53000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V
    .locals 0

    .line 24515
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->setMessageEncoding(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V

    return-void
.end method

.method static synthetic access$53100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 24515
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->clearMessageEncoding()V

    return-void
.end method

.method static synthetic access$53200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V
    .locals 0

    .line 24515
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->setJsonFormat(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V

    return-void
.end method

.method static synthetic access$53300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 24515
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->clearJsonFormat()V

    return-void
.end method

.method private clearEnumType()V
    .locals 1

    .line 25156
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v0, 0x0

    .line 25157
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->enumType_:I

    return-void
.end method

.method private clearFieldPresence()V
    .locals 1

    .line 25121
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v0, 0x0

    .line 25122
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->fieldPresence_:I

    return-void
.end method

.method private clearJsonFormat()V
    .locals 1

    .line 25296
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v0, 0x0

    .line 25297
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->jsonFormat_:I

    return-void
.end method

.method private clearMessageEncoding()V
    .locals 1

    .line 25261
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v0, 0x0

    .line 25262
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->messageEncoding_:I

    return-void
.end method

.method private clearRepeatedFieldEncoding()V
    .locals 1

    .line 25191
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v0, 0x0

    .line 25192
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->repeatedFieldEncoding_:I

    return-void
.end method

.method private clearUtf8Validation()V
    .locals 1

    .line 25226
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v0, 0x0

    .line 25227
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->utf8Validation_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 25693
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .locals 1

    .line 25377
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 25380
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25353
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25360
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25316
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25323
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25365
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25372
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25340
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25347
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25303
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25310
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25328
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
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

    .line 25335
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;",
            ">;"
        }
    .end annotation

    .line 25699
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEnumType(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25149
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->enumType_:I

    .line 25150
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    return-void
.end method

.method private setFieldPresence(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25114
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->fieldPresence_:I

    .line 25115
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    return-void
.end method

.method private setJsonFormat(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25289
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->jsonFormat_:I

    .line 25290
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    return-void
.end method

.method private setMessageEncoding(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25254
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->messageEncoding_:I

    .line 25255
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    return-void
.end method

.method private setRepeatedFieldEncoding(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25184
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->repeatedFieldEncoding_:I

    .line 25185
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    return-void
.end method

.method private setUtf8Validation(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25219
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->utf8Validation_:I

    .line 25220
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

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

    .line 25621
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25677
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 25673
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->memoizedIsInitialized:B

    return-object v1

    .line 25670
    :pswitch_1
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25655
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2

    .line 25657
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    monitor-enter p2

    .line 25658
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 25660
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 25663
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 25665
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

    .line 25652
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "fieldPresence_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 25632
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "enumType_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 25634
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "repeatedFieldEncoding_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 25636
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "utf8Validation_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 25638
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "messageEncoding_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 25640
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "jsonFormat_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 25642
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u180c\u0005"

    .line 25648
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25626
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 25623
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;-><init>()V

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

.method public getEnumType()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;
    .locals 1

    .line 25141
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->enumType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25142
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;->ENUM_TYPE_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;

    :cond_0
    return-object v0
.end method

.method public getFieldPresence()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .locals 1

    .line 25106
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->fieldPresence_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25107
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->FIELD_PRESENCE_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    :cond_0
    return-object v0
.end method

.method public getJsonFormat()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .locals 1

    .line 25281
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->jsonFormat_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25282
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->JSON_FORMAT_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    :cond_0
    return-object v0
.end method

.method public getMessageEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
    .locals 1

    .line 25246
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->messageEncoding_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25247
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->MESSAGE_ENCODING_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    :cond_0
    return-object v0
.end method

.method public getRepeatedFieldEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .locals 1

    .line 25176
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->repeatedFieldEncoding_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25177
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->REPEATED_FIELD_ENCODING_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    :cond_0
    return-object v0
.end method

.method public getUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .locals 1

    .line 25211
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->utf8Validation_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25212
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->UTF8_VALIDATION_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    :cond_0
    return-object v0
.end method

.method public hasEnumType()Z
    .locals 1

    .line 25133
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFieldPresence()Z
    .locals 2

    .line 25098
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasJsonFormat()Z
    .locals 1

    .line 25273
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessageEncoding()Z
    .locals 1

    .line 25238
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRepeatedFieldEncoding()Z
    .locals 1

    .line 25168
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUtf8Validation()Z
    .locals 1

    .line 25203
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
