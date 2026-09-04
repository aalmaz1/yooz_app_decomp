.class final Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/SchemaFactory;


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;


# instance fields
.field private final messageInfoFactory:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfoFactory"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 26
    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    return-void
.end method

.method private static allowExtensions(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfo"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    .locals 4

    .line 81
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;)V

    return-object v0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    .locals 4

    .line 128
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory"

    .line 132
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 133
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    return-object v0
.end method

.method private static newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->useLiteRuntime(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v4

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v5

    .line 58
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v6

    .line 59
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->allowExtensions(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v1

    :cond_0
    move-object v7, v1

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    .line 53
    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetFullSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 67
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->allowExtensions(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v1

    :cond_2
    move-object v5, v1

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static useLiteRuntime(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 140
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->useLiteRuntime(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v1

    .line 41
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    .line 38
    invoke-static {p1, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->newSchema(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetFullSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v1

    .line 45
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    .line 42
    invoke-static {p1, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->newSchema(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;

    move-result-object p1

    :goto_0
    return-object p1

    .line 48
    :cond_1
    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method
