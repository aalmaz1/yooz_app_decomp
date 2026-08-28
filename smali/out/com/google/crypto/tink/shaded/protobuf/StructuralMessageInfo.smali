.class final Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

.field private final fields:[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;Z[I[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "syntax",
            "messageSetWireFormat",
            "checkInitialized",
            "fields",
            "defaultInstance"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    .line 42
    iput-boolean p2, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    .line 43
    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->checkInitialized:[I

    .line 44
    iput-object p4, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->fields:[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    const-string p1, "defaultInstance"

    .line 45
    invoke-static {p5, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;
    .registers 1

    .line 80
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numFields"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCheckInitialized()[I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method public getFields()[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->fields:[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
