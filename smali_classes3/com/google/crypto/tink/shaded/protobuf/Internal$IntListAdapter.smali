.class public Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter;
.super Ljava/util/AbstractList;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final fromList:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter<",
            "TT;>;)V"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter;->fromList:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;

    .line 390
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter;->converter:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter;->converter:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter;->fromList:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter$IntConverter;->convert(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntListAdapter;->fromList:Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method
