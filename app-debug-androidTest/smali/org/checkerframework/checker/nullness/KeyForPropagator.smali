.class public Lorg/checkerframework/checker/nullness/KeyForPropagator;
.super Ljava/lang/Object;
.source "KeyForPropagator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;,
        Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;
    }
.end annotation


# instance fields
.field private final UNKNOWN_KEYFOR:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "unknownKeyfor"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator;->UNKNOWN_KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/nullness/KeyForPropagator;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/KeyForPropagator;

    .line 30
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator;->UNKNOWN_KEYFOR:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method


# virtual methods
.method public propagate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 14
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "direction"    # Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;
    .param p4, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 88
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 89
    .local v0, "subtypeElement":Ljavax/lang/model/element/TypeElement;
    nop

    .line 90
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 91
    .local v1, "supertypeElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v2

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 94
    .local v2, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    return-void

    .line 102
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    return-void

    .line 106
    :cond_1
    nop

    .line 107
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/util/TypeArgumentMapper;->mapTypeArgumentIndices(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;)Ljava/util/Set;

    move-result-object v3

    .line 109
    .local v3, "typeParamMappings":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v4, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;

    .line 110
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct {v4, p0, v5, v6}, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;-><init>(Lorg/checkerframework/checker/nullness/KeyForPropagator;Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/checker/nullness/KeyForPropagator$1;)V

    .line 112
    .local v4, "merger":Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 113
    .local v5, "subtypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, "supertypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/javacutil/Pair;

    .line 116
    .local v9, "path":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v9, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 117
    .local v10, "subtypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v11, v9, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 119
    .local v11, "supertypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v12

    sget-object v13, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v12, v13, :cond_2

    .line 120
    invoke-virtual {v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v12

    sget-object v13, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v12, v13, :cond_3

    .line 121
    goto :goto_0

    .line 124
    :cond_3
    sget-object v12, Lorg/checkerframework/checker/nullness/KeyForPropagator$1;->$SwitchMap$org$checkerframework$checker$nullness$KeyForPropagator$PropagationDirection:[I

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_1

    .line 135
    :pswitch_0
    invoke-virtual {v4, v10, v11}, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v4, v11, v10}, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :pswitch_1
    invoke-virtual {v4, v10, v11}, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    goto :goto_1

    .line 126
    :pswitch_2
    invoke-virtual {v4, v11, v10}, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .line 139
    .end local v9    # "path":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "subtypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v11    # "supertypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    goto :goto_0

    .line 140
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public propagateNewClassTree(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;)V
    .locals 6
    .param p1, "newClassTree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "atypeFactory"    # Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    .line 154
    nop

    .line 155
    invoke-virtual {p3}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 156
    .local v0, "context":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p3, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 160
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-nez v1, :cond_1

    .line 161
    return-void

    .line 163
    :cond_1
    invoke-static {p3, v1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->assignedTo(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 164
    .local v2, "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v2, :cond_2

    .line 165
    return-void

    .line 168
    :cond_2
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_3

    .line 169
    move-object v3, p2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    sget-object v5, Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;->TO_SUBTYPE:Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;

    invoke-virtual {p0, v3, v4, v5, p3}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->propagate(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/checker/nullness/KeyForPropagator$PropagationDirection;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 175
    :cond_3
    return-void

    .line 157
    .end local v1    # "path":Lcom/sun/source/util/TreePath;
    .end local v2    # "assignedTo":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    :goto_0
    return-void
.end method
