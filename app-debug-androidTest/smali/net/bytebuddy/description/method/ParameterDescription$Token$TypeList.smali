.class public Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;
.super Ljava/util/AbstractList;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final typeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)V"
        }
    .end annotation

    .line 1142
    .local p1, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDefinition;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1143
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;->typeDescriptions:Ljava/util/List;

    .line 1144
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1130
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$Token;
    .locals 2
    .param p1, "index"    # I

    .line 1150
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;->typeDescriptions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1157
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;->typeDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
