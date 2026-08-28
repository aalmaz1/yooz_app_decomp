.class public interface abstract Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceDescriptorProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getMethod(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getMethodCount()I
.end method

.method public abstract getMethodList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
.end method

.method public abstract getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasOptions()Z
.end method
