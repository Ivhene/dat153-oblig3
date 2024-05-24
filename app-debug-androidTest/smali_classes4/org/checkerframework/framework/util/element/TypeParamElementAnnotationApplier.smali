.class abstract Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;
.super Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;
.source "TypeParamElementAnnotationApplier.java"


# instance fields
.field protected final typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field protected final typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 46
    iput-object p1, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 47
    iput-object p3, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 48
    return-void
.end method

.method public static accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "typeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 29
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private addAnnotationToMap(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljava/util/Map;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;>;)V"
        }
    .end annotation

    .line 167
    .local p3, "typeToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 168
    .local v0, "annoList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    if-nez v0, :cond_0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 170
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method private applyComponentAnnotation(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)V
    .locals 7
    .param p1, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 179
    .local v0, "upperBoundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v1, "typeToAnnotations":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    iget-object v2, p1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v2, v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->upperBoundTarget()Lcom/sun/tools/javac/code/TargetType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 183
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    .line 184
    nop

    .line 185
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "intersectionTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v3, p1, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget v3, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    .line 188
    invoke-static {v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getBoundIndexOffset(Ljava/util/List;)I

    move-result v4

    add-int/2addr v3, v4

    .line 190
    .local v3, "boundIndex":I
    if-ltz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 201
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-direct {p0, v4, p1, v1}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->addAnnotationToMap(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljava/util/Map;)V

    .line 203
    .end local v2    # "intersectionTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "boundIndex":I
    goto :goto_0

    .line 191
    .restart local v2    # "intersectionTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .restart local v3    # "boundIndex":I
    :cond_0
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid bound index on element annotation ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) for type ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) with upper bound ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 198
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    .end local v2    # "intersectionTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v3    # "boundIndex":I
    :cond_1
    invoke-direct {p0, v0, p1, v1}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->addAnnotationToMap(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljava/util/Map;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {p0, v2, p1, v1}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->addAnnotationToMap(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljava/util/Map;)V

    .line 212
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 213
    .local v3, "typeToAnno":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    nop

    .line 214
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 213
    invoke-static {v4, v5}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 215
    .end local v3    # "typeToAnno":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    goto :goto_1

    .line 216
    :cond_3
    return-void
.end method

.method private applyLowerBounds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "annos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 157
    .local v0, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 158
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 159
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 161
    .end local v0    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method private applyUpperBounds(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "upperBounds":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 114
    .local v0, "upperBoundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 116
    nop

    .line 117
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "intersectionTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 119
    invoke-static {v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getBoundIndexOffset(Ljava/util/List;)I

    move-result v2

    .line 121
    .local v2, "boundIndexOffset":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 122
    .local v4, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v5, v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget v5, v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    add-int/2addr v5, v2

    .line 124
    .local v5, "boundIndex":I
    if-ltz v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 140
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v6, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 141
    .end local v4    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v5    # "boundIndex":I
    goto :goto_0

    .line 125
    .restart local v4    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .restart local v5    # "boundIndex":I
    :cond_0
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid bound index on element annotation ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) for type ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) with upper bound ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeParam:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 133
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) and boundIndex( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    .end local v1    # "intersectionTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v2    # "boundIndexOffset":I
    .end local v4    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v5    # "boundIndex":I
    :cond_1
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 147
    .end local v0    # "upperBoundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->lowerBoundTarget()Lcom/sun/tools/javac/code/TargetType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->upperBoundTarget()Lcom/sun/tools/javac/code/TargetType;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I
    .locals 1
    .param p1, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 62
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    return v0
.end method

.method protected handleTargeted(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 78
    .local p1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->getElementIndex()I

    move-result v0

    .line 79
    .local v0, "paramIndex":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "upperBoundAnnos":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "lowerBoundAnnos":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 83
    .local v4, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v5, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 84
    .local v5, "aliasedAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v5, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 86
    .local v6, "canonicalAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    iget-object v7, v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget v7, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    if-ne v7, v0, :cond_0

    iget-object v7, p0, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 87
    invoke-virtual {v7, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v4}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->isOnComponentType(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    invoke-direct {p0, v4}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->applyComponentAnnotation(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)V

    goto :goto_2

    .line 94
    :cond_3
    iget-object v7, v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v7, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->upperBoundTarget()Lcom/sun/tools/javac/code/TargetType;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 95
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v4    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v5    # "aliasedAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "canonicalAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_2
    goto :goto_0

    .line 102
    :cond_5
    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->applyLowerBounds(Ljava/util/List;)V

    .line 103
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/util/element/TypeParamElementAnnotationApplier;->applyUpperBounds(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method protected abstract lowerBoundTarget()Lcom/sun/tools/javac/code/TargetType;
.end method

.method protected abstract upperBoundTarget()Lcom/sun/tools/javac/code/TargetType;
.end method
