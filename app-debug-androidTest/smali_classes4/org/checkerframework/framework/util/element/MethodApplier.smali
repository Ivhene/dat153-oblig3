.class public Lorg/checkerframework/framework/util/element/MethodApplier;
.super Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;
.source "MethodApplier.java"


# instance fields
.field private final methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field private final methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

.field private final typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 50
    iput-object p3, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 51
    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 52
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 53
    return-void
.end method

.method public static accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p0, "typeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 37
    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/checkerframework/framework/util/element/MethodApplier;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/framework/util/element/MethodApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/MethodApplier;->extractAndApply()V

    .line 34
    return-void
.end method

.method private applyThrowsAnnotations(Ljava/util/List;)V
    .locals 7
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

    .line 170
    .local p1, "annos":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "thrown":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 176
    .local v1, "typeToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 177
    .local v3, "thrownType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v3    # "thrownType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 181
    .local v3, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v4, v3, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 182
    .local v4, "annoPos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    iget v5, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    if-ltz v5, :cond_2

    iget v5, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 183
    iget v5, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 184
    .local v5, "thrownType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v5    # "thrownType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 196
    .end local v3    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v4    # "annoPos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    goto :goto_1

    .line 187
    .restart local v3    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .restart local v4    # "annoPos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MethodApplier.applyThrowsAnnotation: invalid throws index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for annotation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->element:Ljavax/lang/model/element/Element;

    .line 194
    invoke-static {v6}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v3    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v4    # "annoPos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 200
    .local v3, "typeToAnno":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    nop

    .line 201
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 200
    invoke-static {v4, v5}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 202
    .end local v3    # "typeToAnno":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    goto :goto_2

    .line 203
    :cond_4
    return-void
.end method

.method private applyTypeVarUseOnReturnType()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 211
    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->extractAndApply()V

    .line 212
    return-void
.end method


# virtual methods
.method protected annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public extractAndApply()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->setElement(Ljavax/lang/model/element/ExecutableElement;)V

    .line 112
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/checkerframework/framework/util/element/MethodApplier;->applyTypeVarUseOnReturnType()V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 116
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->addDeclarationAnnotationsFromElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    nop

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->addDeclarationAnnotationsFromElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->extractAndApply()V

    .line 129
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 130
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 129
    invoke-static {v1, v2, v3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->applyAllElementAnnotations(Ljava/util/List;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 131
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 132
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getTypeParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 131
    invoke-static {v1, v2, v3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->applyAllElementAnnotations(Ljava/util/List;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 133
    return-void
.end method

.method protected getRawTypeAttributes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodSymbol:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handleTargeted(Ljava/util/List;)V
    .locals 5
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

    .line 139
    .local p1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "unmatched":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    .line 141
    invoke-static {p1, v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->partitionByTargetType(Ljava/util/Collection;Ljava/util/List;[Lcom/sun/tools/javac/code/TargetType;)Ljava/util/Map;

    move-result-object v1

    .line 148
    .local v1, "targetTypeToAnno":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/tools/javac/code/TargetType;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 149
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 148
    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 150
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->methodType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 151
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 150
    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 152
    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/element/MethodApplier;->applyThrowsAnnotations(Ljava/util/List;)V

    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    return-void

    .line 155
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected annotations ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    const-string v4, ","

    invoke-static {v4, v0}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) fortype ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) and element ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected isAccepted()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/MethodApplier;->element:Ljavax/lang/model/element/Element;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/MethodApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method protected validTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method
