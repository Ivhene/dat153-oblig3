.class public Lorg/checkerframework/framework/flow/CFTreeBuilder;
.super Lorg/checkerframework/javacutil/trees/TreeBuilder;
.source "CFTreeBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 28
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/trees/TreeBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 29
    return-void
.end method

.method private createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;
    .locals 9
    .param p1, "annotatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 47
    .local v0, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 49
    .local v1, "annotationTrees":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 51
    .local v3, "am":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 53
    invoke-static {}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unknownTAPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 52
    invoke-static {v3, v4, v5}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->createTypeCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    move-result-object v4

    .line 54
    .local v4, "typeCompound":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotation(Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v5

    .line 55
    .local v5, "annotationTree":Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 57
    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->getAnnotationType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->getArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    .line 56
    invoke-virtual {v6, v7, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeAnnotation(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v6

    .line 59
    .local v6, "typeAnnotationTree":Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    iput-object v4, v6, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 61
    invoke-virtual {v1, v6}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 62
    .end local v3    # "am":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "typeCompound":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v5    # "annotationTree":Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .end local v6    # "typeAnnotationTree":Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    goto :goto_0

    .line 68
    :cond_0
    sget-object v2, Lorg/checkerframework/framework/flow/CFTreeBuilder$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 179
    goto/16 :goto_4

    .line 176
    :pswitch_0
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->ERROR:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 177
    .local v2, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto/16 :goto_3

    .line 167
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 169
    .local v2, "annotatedArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    nop

    .line 170
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 171
    .local v3, "annotatedComponentTree":Lcom/sun/source/tree/Tree;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v5, v3

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 172
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v4

    .line 173
    .local v4, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    move-object v2, v4

    goto/16 :goto_3

    .line 146
    .end local v2    # "annotatedArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .end local v3    # "annotatedComponentTree":Lcom/sun/source/tree/Tree;
    .end local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_2
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 148
    .local v2, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    instance-of v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    if-eqz v3, :cond_5

    .line 150
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 152
    .local v3, "annotatedDeclaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 153
    .local v4, "typeArgTrees":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 154
    .local v6, "arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 156
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 155
    invoke-virtual {v4, v7}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 157
    .end local v6    # "arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 158
    :cond_1
    move-object v5, v2

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    .line 160
    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 161
    .local v5, "clazz":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v2

    .line 162
    .end local v3    # "annotatedDeclaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v4    # "typeArgTrees":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    .end local v5    # "clazz":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    goto/16 :goto_3

    .line 132
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_3
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 134
    .local v2, "intersectionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 136
    .local v3, "components":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 137
    .local v5, "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 138
    invoke-direct {p0, v5}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v6}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 139
    .end local v5    # "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_2

    .line 140
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIntersection(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeIntersection;

    move-result-object v4

    .line 141
    .local v4, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    move-object v2, v4

    goto/16 :goto_3

    .line 108
    .end local v2    # "intersectionType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .end local v3    # "components":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    .end local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_4
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 110
    .local v2, "wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v3

    .line 111
    .local v3, "wildcardType":Ljavax/lang/model/type/WildcardType;
    invoke-interface {v3}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 112
    nop

    .line 113
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 114
    .local v4, "annotatedExtendsBound":Lcom/sun/source/tree/Tree;
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v7, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    .line 116
    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree;

    .line 115
    invoke-virtual {v5, v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v4

    .line 118
    .local v4, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    move-object v2, v4

    goto/16 :goto_3

    .end local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :cond_3
    invoke-interface {v3}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 119
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 120
    .local v4, "annotatedSuperBound":Lcom/sun/source/tree/Tree;
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v7, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    .line 122
    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree;

    .line 121
    invoke-virtual {v5, v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v4

    .line 124
    .local v4, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    move-object v2, v4

    goto/16 :goto_3

    .line 125
    .end local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v6, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    .line 126
    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v4

    .line 128
    .restart local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    move-object v2, v4

    goto :goto_3

    .line 99
    .end local v2    # "wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v3    # "wildcardType":Ljavax/lang/model/type/WildcardType;
    .end local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_5
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 101
    .local v2, "variable":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v3

    .line 102
    .local v3, "underlyingTypeVar":Ljavax/lang/model/type/TypeVariable;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 103
    invoke-interface {v3}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    .line 104
    .restart local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    move-object v2, v4

    goto :goto_3

    .line 94
    .end local v2    # "variable":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v3    # "underlyingTypeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_6
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->VOID:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 95
    .local v2, "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 91
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_7
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->BOOLEAN:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 92
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 88
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_8
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->DOUBLE:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 89
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 85
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_9
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->FLOAT:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 86
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 82
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_a
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->LONG:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 83
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 79
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_b
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->INT:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 80
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 76
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_c
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->SHORT:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 77
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 73
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_d
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->CHAR:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 74
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 70
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    :pswitch_e
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v3, Lcom/sun/tools/javac/code/TypeTag;->BYTE:Lcom/sun/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(Lcom/sun/tools/javac/code/TypeTag;)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    .line 71
    .restart local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    nop

    .line 184
    :cond_5
    :goto_3
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/JCTree;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    .line 186
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    return-object v2

    .line 190
    :cond_6
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFTreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v4, v2

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 191
    invoke-virtual {v3, v1, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->AnnotatedType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v3

    .line 192
    .local v3, "annotatedTypeTree":Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 194
    return-object v3

    .line 179
    .end local v2    # "underlyingTypeTree":Lcom/sun/source/tree/Tree;
    .end local v3    # "annotatedTypeTree":Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;
    :goto_4
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;
    .locals 1
    .param p1, "annotatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->createAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method
