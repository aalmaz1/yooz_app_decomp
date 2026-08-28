.class public final Lcom/google/crypto/tink/shaded/protobuf/Type;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "Type.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/Type;",
        "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/TypeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

.field public static final EDITION_FIELD_NUMBER:I = 0x7

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final ONEOFS_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private edition_:Ljava/lang/String;

.field private fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1136
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;-><init>()V

    .line 1139
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 1140
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->name_:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 19
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 20
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 21
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->edition_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/Type;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/shaded/protobuf/Type;ILjava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setOneofs(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addOneofs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addAllOneofs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearOneofs()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addOneofsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearSourceContext()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setSyntaxValue(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearSyntax()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setEdition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearEdition()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->setFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Field;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addFields(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->addAllFields(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/shaded/protobuf/Type;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->clearFields()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->removeFields(I)V

    return-void
.end method

.method private addAllFields(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Field;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureFieldsIsMutable()V

    .line 148
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOneofs(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOneofsIsMutable()V

    .line 238
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOptionsIsMutable()V

    .line 335
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureFieldsIsMutable()V

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFields(Lcom/google/crypto/tink/shaded/protobuf/Field;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureFieldsIsMutable()V

    .line 131
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOneofs(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOneofsIsMutable()V

    .line 229
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOneofsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 253
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 254
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOneofsIsMutable()V

    .line 255
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 325
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOptionsIsMutable()V

    .line 327
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOptionsIsMutable()V

    .line 318
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearEdition()V
    .registers 2

    .line 474
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getEdition()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->edition_:Ljava/lang/String;

    return-void
.end method

.method private clearFields()V
    .registers 2

    .line 155
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 58
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOneofs()V
    .registers 2

    .line 245
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOptions()V
    .registers 2

    .line 342
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSourceContext()V
    .registers 2

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    .line 395
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    return-void
.end method

.method private clearSyntax()V
    .registers 2

    const/4 v0, 0x0

    .line 437
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->syntax_:I

    return-void
.end method

.method private ensureFieldsIsMutable()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 110
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 112
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method private ensureOneofsIsMutable()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 205
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 207
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 297
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 299
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Type;
    .registers 1

    .line 1145
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object v0
.end method

.method private mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    if-eqz v0, :cond_22

    .line 383
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 384
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    .line 385
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    goto :goto_24

    .line 387
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    .line 389
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 1

    .line 564
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/Type;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 540
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 547
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 503
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 510
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 552
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 559
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 527
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 534
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 490
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 497
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 515
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Type;
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

    .line 522
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 1151
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFields(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureFieldsIsMutable()V

    .line 162
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOptions(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOptionsIsMutable()V

    .line 349
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setEdition(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->edition_:Ljava/lang/String;

    return-void
.end method

.method private setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 482
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 483
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->edition_:Ljava/lang/String;

    return-void
.end method

.method private setFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureFieldsIsMutable()V

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
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
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->name_:Ljava/lang/String;

    return-void
.end method

.method private setOneofs(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOneofsIsMutable()V

    .line 219
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 308
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->ensureOptionsIsMutable()V

    .line 310
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    .line 374
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    return-void
.end method

.method private setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->syntax_:I

    return-void
.end method

.method private setSyntaxValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 422
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->syntax_:I

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

    .line 1078
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/Type$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_82

    .line 1129
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 1123
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1108
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Type;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 1110
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/Type;

    monitor-enter p2

    .line 1111
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Type;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 1113
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 1116
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/Type;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 1118
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

    .line 1105
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    return-object p1

    :pswitch_36
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fields_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1086
    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/Field;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "oneofs_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "options_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/Option;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "sourceContext_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "syntax_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "edition_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0003\u0000\u0001\u0208\u0002\u001b\u0003\u021a\u0004\u001b\u0005\u1009\u0000\u0006\u000c\u0007\u0208"

    .line 1101
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1083
    :pswitch_76
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Type$1;)V

    return-object p1

    .line 1080
    :pswitch_7c
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;-><init>()V

    return-object p1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_76
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getEdition()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->edition_:Ljava/lang/String;

    return-object v0
.end method

.method public getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->edition_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFields(I)Lcom/google/crypto/tink/shaded/protobuf/Field;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Field;

    return-object p1
.end method

.method public getFieldsCount()I
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFieldsOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/FieldOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/FieldOrBuilder;

    return-object p1
.end method

.method public getFieldsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->fields_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOneofs(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOneofsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 201
    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsCount()I
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOneofsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->oneofs_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p1
.end method

.method public getOptionsCount()I
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->sourceContext_:Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .registers 2

    .line 414
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->syntax_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Syntax;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_a

    .line 415
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    :cond_a
    return-object v0
.end method

.method public getSyntaxValue()I
    .registers 2

    .line 406
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->syntax_:I

    return v0
.end method

.method public hasSourceContext()Z
    .registers 3

    .line 359
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
