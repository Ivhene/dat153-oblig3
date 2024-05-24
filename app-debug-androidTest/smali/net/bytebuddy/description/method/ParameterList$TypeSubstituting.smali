.class public Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSubstituting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InGenericShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

.field private final parameterDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .param p1, "declaringMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p2, "parameterDescriptions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/method/ParameterDescription;>;"
    .local p3, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    .line 567
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    .line 568
    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->parameterDescriptions:Ljava/util/List;

    .line 569
    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    .line 570
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$InGenericShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$InGenericShape;
    .locals 4
    .param p1, "index"    # I

    .line 576
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->parameterDescriptions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 583
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;->parameterDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
