.class final Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;
.super Ljava/lang/Object;
.source "ListFieldSchemas.java"


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final FULL_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

.field private static final LITE_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->loadSchemaForFullRuntime()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->FULL_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 13
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemaLite;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemaLite;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->LITE_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->FULL_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    return-object v0
.end method

.method static lite()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchemas;->LITE_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .locals 4

    .line 24
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "com.google.crypto.tink.shaded.protobuf.ListFieldSchemaFull"

    .line 28
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method
