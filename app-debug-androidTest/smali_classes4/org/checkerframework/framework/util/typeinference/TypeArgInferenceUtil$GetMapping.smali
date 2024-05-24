.class Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;
.super Ljava/lang/Object;
.source "TypeArgInferenceUtil.java"

# interfaces
.implements Ljavax/lang/model/type/TypeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/lang/model/type/TypeVisitor<",
        "Ljava/lang/Void;",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final subs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;"
        }
    .end annotation
.end field

.field final types:Ljavax/lang/model/util/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 613
    const-class v0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljavax/lang/model/util/Types;)V
    .locals 1
    .param p2, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;",
            "Ljavax/lang/model/util/Types;",
            ")V"
        }
    .end annotation

    .line 619
    .local p1, "typeVariables":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeVariable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->subs:Ljava/util/Map;

    .line 620
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->typeVariables:Ljava/util/List;

    .line 621
    iput-object p2, p0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->types:Ljavax/lang/model/util/Types;

    .line 622
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljavax/lang/model/util/Types;
    .param p3, "x2"    # Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$1;

    .line 613
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;-><init>(Ljava/util/List;Ljavax/lang/model/util/Types;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/TypeMirror;

    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 626
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 627
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitArray(Ljavax/lang/model/type/ArrayType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "t"    # Ljavax/lang/model/type/ArrayType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 649
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 650
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "t"    # Ljavax/lang/model/type/DeclaredType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 655
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 656
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 657
    .local v0, "param":Ljavax/lang/model/type/DeclaredType;
    iget-object v1, p0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, p2, v0}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    .line 661
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 662
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 663
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 655
    .end local v0    # "param":Ljavax/lang/model/type/DeclaredType;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitError(Ljavax/lang/model/type/ErrorType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/ErrorType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/ExecutableType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 706
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "t"    # Ljavax/lang/model/type/IntersectionType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 726
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 727
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/IntersectionType;

    .line 728
    .local v0, "param":Ljavax/lang/model/type/IntersectionType;
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 730
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 731
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 728
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 726
    .end local v0    # "param":Ljavax/lang/model/type/IntersectionType;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitNoType(Ljavax/lang/model/type/NoType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Ljavax/lang/model/type/NoType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/NoType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 711
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitNull(Ljavax/lang/model/type/NullType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Ljavax/lang/model/type/NullType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/NullType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/PrimitiveType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 639
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "t"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 676
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->typeVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->subs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 678
    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 679
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 680
    .local v0, "param":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 681
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 684
    .end local v0    # "param":Ljavax/lang/model/type/TypeVariable;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitUnion(Ljavax/lang/model/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitUnion(Ljavax/lang/model/type/UnionType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Ljavax/lang/model/type/UnionType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/UnionType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 721
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visitWildcard(Ljavax/lang/model/type/WildcardType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "t"    # Ljavax/lang/model/type/WildcardType;
    .param p2, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 689
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 690
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    .line 692
    .local v0, "param":Ljavax/lang/model/type/WildcardType;
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 693
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 694
    .end local v0    # "param":Ljavax/lang/model/type/WildcardType;
    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 695
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 696
    .local v0, "param":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 697
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 698
    .end local v0    # "param":Ljavax/lang/model/type/TypeVariable;
    nop

    .line 701
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 699
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
