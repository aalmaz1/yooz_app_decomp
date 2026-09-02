.class public final Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Type.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Type;",
        "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/TypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 580
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Type$1;)V
    .registers 2

    .line 573
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFields(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;"
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 715
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOneofs(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;"
        }
    .end annotation

    .line 908
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 909
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFields(ILcom/google/crypto/tink/shaded/protobuf/Field$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 706
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 705
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 686
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(Lcom/google/crypto/tink/shaded/protobuf/Field;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public addOneofs(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 792
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOneofsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 823
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 900
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 899
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 880
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 890
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public clearEdition()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 1055
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1056
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2800(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearFields()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 722
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 617
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearOneofs()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 811
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 812
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 916
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 917
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearSourceContext()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 971
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 972
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 2

    .line 1017
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1018
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2600(Lcom/google/crypto/tink/shaded/protobuf/Type;)V

    return-object p0
.end method

.method public getEdition()Ljava/lang/String;
    .registers 2

    .line 1028
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

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

    .line 652
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getFields(I)Lcom/google/crypto/tink/shaded/protobuf/Field;

    move-result-object p1

    return-object p1
.end method

.method public getFieldsCount()I
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getFieldsCount()I

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

    .line 638
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 639
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v0

    .line 638
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

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

    .line 760
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofs(I)Ljava/lang/String;

    move-result-object p1

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

    .line 770
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsCount()I
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofsCount()I

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

    .line 742
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 743
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOneofsList()Ljava/util/List;

    move-result-object v0

    .line 742
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    .line 846
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .registers 2

    .line 840
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOptionsCount()I

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

    .line 832
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 833
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 832
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;
    .registers 2

    .line 941
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .registers 2

    .line 1000
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .registers 2

    .line 982
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public hasSourceContext()Z
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Type;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 965
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeFields(I)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V

    return-object p0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 924
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V

    return-object p0
.end method

.method public setEdition(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2700(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1066
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2900(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFields(ILcom/google/crypto/tink/shaded/protobuf/Field$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 670
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 669
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public setFields(ILcom/google/crypto/tink/shaded/protobuf/Field;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 659
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 660
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOneofs(ILjava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 780
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Type;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 863
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    .line 864
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 863
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
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

    .line 853
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Type;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 956
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 947
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 948
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 1009
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2500(Lcom/google/crypto/tink/shaded/protobuf/Type;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 990
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->copyOnWrite()V

    .line 991
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Type$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Type;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Type;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Type;I)V

    return-object p0
.end method
