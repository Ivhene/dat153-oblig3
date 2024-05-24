.class public Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$Explicit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final typeDefinitions:Ljava/util/List;
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
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V
    .locals 0
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)V"
        }
    .end annotation

    .line 467
    .local p2, "typeDefinitions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDefinition;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    .line 468
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 469
    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->typeDefinitions:Ljava/util/List;

    .line 470
    return-void
.end method

.method public varargs constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;[Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 1
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "typeDefinition"    # [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 458
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    .line 459
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 439
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 4
    .param p1, "index"    # I

    .line 476
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 477
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "previous":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 478
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->typeDefinitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v1    # "previous":I
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/method/ParameterDescription$Latent;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->typeDefinitions:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v0}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;II)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 487
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;->typeDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
