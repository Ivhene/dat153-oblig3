.class Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;
.super Lorg/checkerframework/framework/type/TypeFromTreeVisitor;
.source "TypeFromTypeTreeVisitor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final visitedBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/checkerframework/framework/type/TypeFromTreeVisitor;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitedBounds:Ljava/util/Map;

    return-void
.end method

.method private forTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 9
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 253
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    .line 258
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 259
    .local v0, "typeVar":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeParameterElement;

    .line 260
    .local v1, "tpe":Ljavax/lang/model/element/TypeParameterElement;
    invoke-interface {v1}, Ljavax/lang/model/element/TypeParameterElement;->getGenericElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 261
    .local v2, "elt":Ljavax/lang/model/element/Element;
    instance-of v3, v2, Ljavax/lang/model/element/TypeElement;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 262
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 263
    .local v3, "typeElt":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 264
    .local v5, "idx":I
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/ClassTree;

    .line 265
    .local v6, "cls":Lcom/sun/source/tree/ClassTree;
    if-eqz v6, :cond_0

    .line 271
    nop

    .line 272
    invoke-interface {v6}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 273
    .local v7, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v8, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setDeclaration(Z)V

    .line 274
    return-object v7

    .line 277
    .end local v7    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-object p1

    .line 279
    .end local v3    # "typeElt":Ljavax/lang/model/element/TypeElement;
    .end local v5    # "idx":I
    .end local v6    # "cls":Lcom/sun/source/tree/ClassTree;
    :cond_1
    instance-of v3, v2, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v3, :cond_3

    .line 280
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 281
    .local v3, "exElt":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 282
    .restart local v5    # "idx":I
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/MethodTree;

    .line 283
    .local v6, "meth":Lcom/sun/source/tree/MethodTree;
    if-eqz v6, :cond_2

    .line 286
    nop

    .line 287
    invoke-interface {v6}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    .line 288
    .restart local v7    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v8, v7

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v8, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setDeclaration(Z)V

    .line 289
    return-object v7

    .line 293
    .end local v7    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    return-object p1

    .line 298
    .end local v3    # "exElt":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "idx":I
    .end local v6    # "meth":Lcom/sun/source/tree/MethodTree;
    :cond_3
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 299
    return-object p1

    .line 301
    :cond_4
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TypeFromTree.forTypeVariable: not a supported element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v0    # "typeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v1    # "tpe":Ljavax/lang/model/element/TypeParameterElement;
    .end local v2    # "elt":Ljavax/lang/model/element/Element;
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "TypeFromTree.forTypeVariable: should only be called on type variables"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateWildcardBounds(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local p2, "typeParams":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .local v0, "typeArgsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, "typeParamsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 166
    .local v2, "typeArg":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;

    .line 167
    .local v3, "typeParam":Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;
    instance-of v4, v2, Lcom/sun/source/tree/WildcardTree;

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 169
    .local v4, "typeVar":Lcom/sun/tools/javac/code/Type$TypeVar;
    move-object v5, v2

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v5, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 170
    .local v5, "wcType":Lcom/sun/tools/javac/code/Type$WildcardType;
    iget-object v6, v5, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v7, v4, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v6, v7, :cond_1

    .line 174
    invoke-virtual {v5, v4}, Lcom/sun/tools/javac/code/Type$WildcardType;->withTypeVar(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 177
    .end local v2    # "typeArg":Lcom/sun/source/tree/Tree;
    .end local v3    # "typeParam":Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;
    .end local v4    # "typeVar":Lcom/sun/tools/javac/code/Type$TypeVar;
    .end local v5    # "wcType":Lcom/sun/tools/javac/code/Type$WildcardType;
    :cond_1
    goto :goto_0

    .line 178
    :cond_2
    return-void

    .line 160
    .end local v0    # "typeArgsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/sun/source/tree/Tree;>;"
    .end local v1    # "typeParamsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/tools/javac/code/Symbol$TypeVariableSymbol;>;"
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/AnnotatedTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 55
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 56
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v0, :cond_0

    .line 57
    iget-object v1, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 59
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->validAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTree(Lcom/sun/source/tree/AnnotatedTypeTree;)Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "annos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_4

    .line 69
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 70
    .local v2, "wildcardAttachedToNode":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 71
    .local v3, "underlyingWildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    iget-object v4, v2, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Type$WildcardType;->withTypeVar(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    .line 74
    move-object v4, v0

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 75
    .local v4, "wctype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 77
    .local v5, "underlyingTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_1

    .line 79
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 80
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_2

    .line 82
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_3

    .line 84
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 94
    .end local v2    # "wildcardAttachedToNode":Lcom/sun/tools/javac/code/Type$WildcardType;
    .end local v3    # "underlyingWildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    .end local v4    # "wctype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v5    # "underlyingTree":Lcom/sun/source/tree/ExpressionTree;
    :goto_0
    goto :goto_1

    .line 86
    .restart local v2    # "wildcardAttachedToNode":Lcom/sun/tools/javac/code/Type$WildcardType;
    .restart local v3    # "underlyingWildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    .restart local v4    # "wctype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .restart local v5    # "underlyingTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_3
    new-instance v6, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected kind for type.  node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " kind="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 92
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    .end local v2    # "wildcardAttachedToNode":Lcom/sun/tools/javac/code/Type$WildcardType;
    .end local v3    # "underlyingWildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    .end local v4    # "wctype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v5    # "underlyingTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_4
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 98
    :goto_1
    return-object v0

    .line 59
    .end local v1    # "annos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 103
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 105
    .local v0, "component":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 106
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    instance-of v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v2, :cond_0

    .line 107
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 108
    return-object v1

    .line 106
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 309
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 311
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 312
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->forTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 315
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IntersectionTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 344
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 346
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 347
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->forTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 350
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 321
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 323
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 324
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->forTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 327
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 115
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 116
    .local v0, "baseType":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->updateWildcardBounds(Ljava/util/List;Ljava/util/List;)V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 120
    .local v3, "t":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v3    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 124
    .local v2, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 125
    .local v3, "atype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 128
    instance-of v4, v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v4, :cond_2

    .line 129
    instance-of v4, v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v4, :cond_1

    .line 130
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v4, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    goto :goto_1

    .line 129
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 132
    :cond_2
    :goto_1
    return-object v2
.end method

.method public bridge synthetic visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/PrimitiveTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 182
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/TypeParameterTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v0, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 191
    .local v2, "t":Lcom/sun/source/tree/Tree;
    iget-object v3, p0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitedBounds:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitedBounds:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v3, v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    if-ne p2, v3, :cond_0

    .line 192
    iget-object v3, p0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitedBounds:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .local v3, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 194
    .end local v3    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitedBounds:Ljava/util/Map;

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 196
    .restart local v3    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitedBounds:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v2    # "t":Lcom/sun/source/tree/Tree;
    .end local v3    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 202
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTree(Lcom/sun/source/tree/TypeParameterTree;)Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 212
    nop

    .line 213
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 215
    .local v3, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v4, "superBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    goto :goto_2

    .line 209
    .end local v3    # "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .end local v4    # "superBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :pswitch_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 210
    goto :goto_3

    .line 207
    :pswitch_1
    goto :goto_3

    .line 216
    .restart local v3    # "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .restart local v4    # "superBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 217
    .local v6, "b":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v6    # "b":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_2

    .line 219
    :cond_2
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->setDirectSuperTypes(Ljava/util/List;)V

    .line 222
    .end local v3    # "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .end local v4    # "superBounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/UnionTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 332
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 334
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 335
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->forTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 338
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 228
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 230
    .local v0, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 231
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    instance-of v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    if-eqz v2, :cond_2

    .line 236
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 237
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    .line 240
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 242
    :cond_1
    :goto_0
    return-object v1

    .line 231
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
