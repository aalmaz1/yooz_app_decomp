.class public abstract Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.super Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final MUTABLE_FLAG_MASK:I = -0x80000000

.field static final UNINITIALIZED_HASH_CODE:I = 0x0

.field static final UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 363
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static checkIsLite(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1464
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1468
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p0

    .line 1465
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p0, :cond_16

    .line 1671
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 1673
    :cond_9
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1674
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1675
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_16
    :goto_16
    return-object p0
.end method

.method private computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nullableSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_f

    .line 351
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 354
    :cond_f
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected static emptyBooleanList()Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
    .registers 1

    .line 1537
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
    .registers 1

    .line 1527
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
    .registers 1

    .line 1517
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
    .registers 1

    .line 1497
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;
    .registers 1

    .line 1507
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1547
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ProtobufArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private ensureUnknownFieldsInitialized()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 170
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    :cond_e
    return-void
.end method

.method static getDefaultInstance(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    if-nez v0, :cond_28

    .line 373
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 377
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_42

    .line 382
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 387
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 385
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_42
    :goto_42
    return-object v0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "name",
            "params"
        }
    .end annotation

    .line 1243
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p2

    .line 1245
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\" missing method \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "object",
            "params"
        }
    .end annotation

    .line 1254
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 1259
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1260
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 1262
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 1263
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1265
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1261
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 1256
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final isInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "shouldMemoize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1478
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1479
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    return v1

    :cond_10
    if-nez v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 1486
    :cond_14
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2c

    .line 1489
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    if-eqz v0, :cond_28

    move-object v1, p0

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 1490
    :goto_29
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return v0
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1541
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 1542
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1531
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 1532
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1521
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 1522
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1501
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 1502
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1511
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 1512
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1551
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 1552
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object p0

    return-object p0
.end method

.method protected static newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "info",
            "objects"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "messageDefaultInstance",
            "enumTypeMap",
            "number",
            "type",
            "isPacked",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1166
    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v11, 0x1

    move-object v7, v4

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static newSingularGeneratedExtension(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "defaultValue",
            "messageDefaultInstance",
            "enumTypeMap",
            "number",
            "type",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1145
    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1774
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1773
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1772
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1782
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1781
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1698
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1697
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1705
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1759
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1766
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1744
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p1

    .line 1745
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1742
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1741
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1753
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1752
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1691
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1685
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1684
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1726
    array-length v0, p1

    .line 1727
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    const/4 v2, 0x0

    .line 1726
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1734
    array-length v1, p1

    .line 1735
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1734
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static parsePartialDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1790
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 1794
    :cond_9
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0
    :try_end_d
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_d} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_25

    .line 1803
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1804
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p1

    .line 1805
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    const/4 p2, 0x0

    .line 1807
    :try_start_1b
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1e
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p1

    .line 1809
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_25
    move-exception p0

    .line 1801
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2c
    move-exception p0

    .line 1796
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1797
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    .line 1799
    :cond_39
    throw p0
.end method

.method private static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1713
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->newCodedInput()Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p1

    .line 1714
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    const/4 p2, 0x0

    .line 1716
    :try_start_9
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_9 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 1718
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method protected static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1660
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1594
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1598
    :try_start_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 1599
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 1600
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_16} :catch_4c
    .catch Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_16} :catch_42
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 1614
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_27

    .line 1615
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1617
    :cond_27
    throw p0

    :catch_28
    move-exception p1

    .line 1609
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_38

    .line 1610
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1612
    :cond_38
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_42
    move-exception p1

    .line 1607
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_4c
    move-exception p1

    .line 1602
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 1603
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 1605
    :cond_59
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-object p0

    .line 1634
    :cond_3
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1636
    :try_start_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v6

    add-int v4, p2, p3

    .line 1637
    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;

    invoke-direct {v5, p4}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V

    .line 1639
    invoke-interface {v6, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_20
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_7 .. :try_end_20} :catch_4e
    .catch Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException; {:try_start_7 .. :try_end_20} :catch_44
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_20} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_20} :catch_21

    return-object p0

    .line 1653
    :catch_21
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2a
    move-exception p1

    .line 1648
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_3a

    .line 1649
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1651
    :cond_3a
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_44
    move-exception p1

    .line 1646
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_4e
    move-exception p1

    .line 1641
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 1642
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 1644
    :cond_5b
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method protected static registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 400
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method buildMessageInfo()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method clearMemoizedHashCode()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return-void
.end method

.method clearMemoizedSerializedSize()V
    .registers 2

    const v0, 0x7fffffff

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    return-void
.end method

.method computeHashCode()I
    .registers 2

    .line 141
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0"
        }
    .end annotation

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 156
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 160
    :cond_13
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method getMemoizedHashCode()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method getMemoizedSerializedSize()I
    .registers 3

    .line 299
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method getSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schema"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 323
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result p1

    if-ltz p1, :cond_d

    return p1

    .line 325
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialized size must be non-negative, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_22
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_30

    .line 332
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result p1

    return p1

    .line 336
    :cond_30
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 129
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    return v0

    .line 133
    :cond_b
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->hashCodeIsNotMemoized()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 134
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->setMemoizedHashCode(I)V

    .line 137
    :cond_18
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    return v0
.end method

.method hashCodeIsNotMemoized()Z
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    .line 223
    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method isMutable()Z
    .registers 3

    .line 64
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected makeImmutable()V
    .registers 2

    .line 203
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->markImmutable()V

    return-void
.end method

.method markImmutable()V
    .registers 3

    .line 68
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 198
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method protected final mergeUnknownFields(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method protected mergeVarintField(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public final newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method newMutableInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method protected parseUnknownField(ILcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_9
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 186
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method setMemoizedHashCode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return-void
.end method

.method setMemoizedSerializedSize(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    if-ltz p1, :cond_f

    .line 307
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void

    .line 305
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialized size must be non-negative, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    .line 230
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLiteToString;->toString(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 315
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStreamWriter;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    return-void
.end method
