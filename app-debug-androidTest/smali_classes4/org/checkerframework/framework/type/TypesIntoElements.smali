.class public Lorg/checkerframework/framework/type/TypesIntoElements;
.super Ljava/lang/Object;
.source "TypesIntoElements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUniqueTypeCompounds(Ljavax/lang/model/util/Types;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V
    .locals 5
    .param p0, "types"    # Ljavax/lang/model/util/Types;
    .param p1, "sym"    # Lcom/sun/tools/javac/code/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p2, "tcs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 281
    .local v0, "raw":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 283
    .local v1, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 284
    .local v3, "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    invoke-static {v0, v3, p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->isTypeCompoundContained(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljavax/lang/model/util/Types;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 285
    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 287
    .end local v3    # "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_0
    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lcom/sun/tools/javac/util/List;)V

    .line 290
    return-void
.end method

.method private static generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static store(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;)V
    .locals 6
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 60
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 61
    .local v0, "csym":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 63
    .local v1, "types":Ljavax/lang/model/util/Types;
    invoke-interface {p2}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v1, p1, v2, v0}, Lorg/checkerframework/framework/type/TypesIntoElements;->storeTypeParameters(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lcom/sun/tools/javac/code/Symbol;)V

    .line 85
    invoke-interface {p2}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 86
    .local v3, "mem":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_0

    .line 87
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/MethodTree;

    invoke-static {p0, v1, p1, v4}, Lorg/checkerframework/framework/type/TypesIntoElements;->storeMethod(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodTree;)V

    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_1

    .line 89
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    invoke-static {p0, v1, p1, v4}, Lorg/checkerframework/framework/type/TypesIntoElements;->storeVariable(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/VariableTree;)V

    .line 93
    .end local v3    # "mem":Lcom/sun/source/tree/Tree;
    :cond_1
    :goto_1
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method private static storeClassExtends(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;I)V
    .locals 4
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "types"    # Ljavax/lang/model/util/Types;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "ext"    # Lcom/sun/source/tree/Tree;
    .param p4, "csym"    # Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .param p5, "implidx"    # I

    .line 189
    if-nez p3, :cond_0

    .line 192
    invoke-virtual {p4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 193
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v1, -0x1

    .local v1, "pos":I
    goto :goto_0

    .line 195
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "pos":I
    :cond_0
    invoke-virtual {p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 196
    .restart local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v1, p3

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    iget v1, v1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    .line 199
    .restart local v1    # "pos":I
    :goto_0
    invoke-static {p5, v1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->classExtendsTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v2

    .line 202
    .local v2, "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    invoke-static {p0, v0, v2}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 203
    .local v3, "tcs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-static {p1, p4, v3}, Lorg/checkerframework/framework/type/TypesIntoElements;->addUniqueTypeCompounds(Ljavax/lang/model/util/Types;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    .line 204
    return-void
.end method

.method private static storeMethod(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodTree;)V
    .locals 9
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "types"    # Ljavax/lang/model/util/Types;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "meth"    # Lcom/sun/source/tree/MethodTree;

    .line 101
    invoke-virtual {p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 102
    .local v0, "mtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 104
    .local v1, "sym":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 106
    .local v2, "tcs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-interface {p3}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, p1, p2, v3, v1}, Lorg/checkerframework/framework/type/TypesIntoElements;->storeTypeParameters(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lcom/sun/tools/javac/code/Symbol;)V

    .line 110
    move-object v3, p3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getReturnType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v3

    .line 111
    .local v3, "ret":Lcom/sun/tools/javac/tree/JCTree;
    if-eqz v3, :cond_0

    .line 112
    iget v4, v3, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v4}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->methodReturnTAPosition(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    .line 113
    .local v4, "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    nop

    .line 115
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 114
    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 120
    .end local v3    # "ret":Lcom/sun/tools/javac/tree/JCTree;
    .end local v4    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_0
    move-object v3, p3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getReceiverParameter()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v3

    .line 121
    .local v3, "recv":Lcom/sun/tools/javac/tree/JCTree;
    if-eqz v3, :cond_1

    .line 122
    iget v4, v3, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v4}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->methodReceiverTAPosition(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    .line 123
    .restart local v4    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    nop

    .line 126
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 125
    invoke-static {p0, v5, v4}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 124
    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 131
    .end local v3    # "recv":Lcom/sun/tools/javac/tree/JCTree;
    .end local v4    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_1
    const/4 v3, 0x0

    .line 132
    .local v3, "pidx":I
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    .line 133
    .local v4, "ptypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    move-object v5, p3

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree;

    .line 134
    .local v6, "param":Lcom/sun/tools/javac/tree/JCTree;
    iget v7, v6, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v3, v7}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->methodParameterTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v7

    .line 135
    .local v7, "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {p0, v8, v7}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 136
    nop

    .end local v6    # "param":Lcom/sun/tools/javac/tree/JCTree;
    add-int/lit8 v3, v3, 0x1

    .line 137
    goto :goto_0

    .line 141
    .end local v3    # "pidx":I
    .end local v4    # "ptypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v7    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_2
    const/4 v3, 0x0

    .line 142
    .local v3, "tidx":I
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v4

    .line 143
    .local v4, "ttypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    move-object v5, p3

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getThrows()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree;

    .line 144
    .local v6, "thr":Lcom/sun/tools/javac/tree/JCTree;
    iget v7, v6, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v3, v7}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->methodThrowsTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v7

    .line 145
    .restart local v7    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {p0, v8, v7}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 146
    nop

    .end local v6    # "thr":Lcom/sun/tools/javac/tree/JCTree;
    add-int/lit8 v3, v3, 0x1

    .line 147
    goto :goto_1

    .line 150
    .end local v3    # "tidx":I
    .end local v4    # "ttypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v7    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_3
    invoke-static {p1, v1, v2}, Lorg/checkerframework/framework/type/TypesIntoElements;->addUniqueTypeCompounds(Ljavax/lang/model/util/Types;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    .line 151
    return-void
.end method

.method private static storeTypeParameters(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Lcom/sun/tools/javac/code/Symbol;)V
    .locals 15
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "types"    # Ljavax/lang/model/util/Types;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p4, "sym"    # Lcom/sun/tools/javac/code/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljavax/lang/model/util/Types;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/TypeParameterTree;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    .line 212
    .local p3, "tps":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/TypeParameterTree;>;"
    move-object v0, p0

    invoke-virtual/range {p4 .. p4}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 213
    .local v1, "isClassOrInterface":Z
    :goto_1
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 215
    .local v2, "tcs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    const/4 v3, 0x0

    .line 216
    .local v3, "tpidx":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/TypeParameterTree;

    .line 217
    .local v5, "tp":Lcom/sun/source/tree/TypeParameterTree;
    nop

    .line 218
    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 224
    .local v7, "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    if-eqz v1, :cond_2

    .line 225
    move-object v8, v5

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    iget v8, v8, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v3, v8}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->typeParameterTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v8

    .local v8, "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_3

    .line 227
    .end local v8    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_2
    move-object v8, v5

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    iget v8, v8, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v3, v8}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->methodTypeParameterTAPosition(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v8

    .line 232
    .restart local v8    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :goto_3
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 233
    .local v9, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/AnnotationMirror;

    .line 234
    .local v11, "am":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 235
    invoke-static {v11, v8, p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->createTypeCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    move-result-object v12

    .line 237
    .local v12, "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    invoke-virtual {v9, v12}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 238
    .end local v11    # "am":Ljavax/lang/model/element/AnnotationMirror;
    .end local v12    # "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    goto :goto_4

    .line 239
    :cond_3
    invoke-virtual {v2, v9}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 242
    .end local v9    # "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    .line 244
    .local v9, "tpbound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v10

    sget-object v11, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v10, v11, :cond_4

    .line 245
    move-object v10, v9

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 247
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v10

    .local v10, "bounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    goto :goto_5

    .line 249
    .end local v10    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_4
    invoke-static {v9}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v10

    .line 252
    .restart local v10    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_5
    const/4 v11, 0x0

    .line 253
    .local v11, "bndidx":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 254
    .local v13, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v11, :cond_5

    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v14

    check-cast v14, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v14}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 256
    add-int/lit8 v11, v11, 0x1

    .line 259
    :cond_5
    if-eqz v1, :cond_6

    .line 260
    move-object v14, v5

    check-cast v14, Lcom/sun/tools/javac/tree/JCTree;

    iget v14, v14, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    .line 261
    invoke-static {v3, v11, v14}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->typeParameterBoundTAPosition(III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v8

    goto :goto_7

    .line 264
    :cond_6
    move-object v14, v5

    check-cast v14, Lcom/sun/tools/javac/tree/JCTree;

    iget v14, v14, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    .line 265
    invoke-static {v3, v11, v14}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->methodTypeParameterBoundTAPosition(III)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v8

    .line 269
    :goto_7
    invoke-static {p0, v13, v8}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 270
    nop

    .end local v13    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v11, v11, 0x1

    .line 271
    goto :goto_6

    .line 272
    :cond_7
    nop

    .end local v5    # "tp":Lcom/sun/source/tree/TypeParameterTree;
    .end local v7    # "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v8    # "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .end local v9    # "tpbound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v10    # "bounds":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v11    # "bndidx":I
    add-int/lit8 v3, v3, 0x1

    .line 273
    goto/16 :goto_2

    .line 276
    :cond_8
    move-object/from16 v6, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-static {v4, v5, v2}, Lorg/checkerframework/framework/type/TypesIntoElements;->addUniqueTypeCompounds(Ljavax/lang/model/util/Types;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    .line 277
    return-void
.end method

.method private static storeVariable(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/VariableTree;)V
    .locals 4
    .param p0, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "types"    # Ljavax/lang/model/util/Types;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "var"    # Lcom/sun/source/tree/VariableTree;

    .line 158
    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 160
    .local v0, "sym":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    instance-of v1, p2, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 166
    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 168
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    invoke-virtual {p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 171
    .restart local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    move-object v2, p3

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->fieldTAPosition(I)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v2

    .line 174
    .local v2, "tapos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    invoke-static {p0, v1, v2}, Lorg/checkerframework/framework/type/TypesIntoElements;->generateTypeCompounds(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 175
    .local v3, "tcs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-static {p1, v0, v3}, Lorg/checkerframework/framework/type/TypesIntoElements;->addUniqueTypeCompounds(Ljavax/lang/model/util/Types;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V

    .line 176
    return-void
.end method
