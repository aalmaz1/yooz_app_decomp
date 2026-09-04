.class public interface abstract Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaultsOrBuilder;
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
    name = "FeatureSetDefaultsOrBuilder"
.end annotation


# virtual methods
.method public abstract getDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getDefaultsCount()I
.end method

.method public abstract getDefaultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaximumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;
.end method

.method public abstract getMinimumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;
.end method

.method public abstract hasMaximumEdition()Z
.end method

.method public abstract hasMinimumEdition()Z
.end method
