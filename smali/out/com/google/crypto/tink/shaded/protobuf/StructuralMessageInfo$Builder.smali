.class public final Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private checkInitialized:[I

.field private defaultInstance:Ljava/lang/Object;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private messageSetWireFormat:Z

.field private syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

.field private wasBuilt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numFields"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;
    .registers 8

    .line 129
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_33

    .line 132
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    .line 136
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 137
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    iget-boolean v3, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    .line 141
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;Z[I[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;Ljava/lang/Object;)V

    return-object v0

    .line 133
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify a proto syntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withCheckInitialized([I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkInitialized"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    return-void
.end method

.method public withDefaultInstance(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    return-void
.end method

.method public withField(Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_a

    .line 125
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 123
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Builder can only build once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withMessageSetWireFormat(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSetWireFormat"
        }
    .end annotation

    .line 114
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    return-void
.end method

.method public withSyntax(Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syntax"
        }
    .end annotation

    const-string v0, "syntax"

    .line 110
    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    return-void
.end method
