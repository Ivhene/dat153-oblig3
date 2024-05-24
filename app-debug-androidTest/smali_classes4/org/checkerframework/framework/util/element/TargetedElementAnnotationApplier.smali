.class abstract Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;
.super Ljava/lang/Object;
.source "TargetedElementAnnotationApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;
    }
.end annotation


# instance fields
.field protected final element:Ljavax/lang/model/element/Element;

.field protected final type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 88
    iput-object p2, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->element:Ljavax/lang/model/element/Element;

    .line 89
    return-void
.end method


# virtual methods
.method protected abstract annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
.end method

.method public extractAndApply()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    nop

    .line 210
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->getRawTypeAttributes()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->sift(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 212
    .local v0, "targetClassToAnno":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    sget-object v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->INVALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->handleInvalid(Ljava/util/List;)V

    .line 213
    sget-object v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->VALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->handleValid(Ljava/util/List;)V

    .line 214
    sget-object v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->TARGETED:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->handleTargeted(Ljava/util/List;)V

    .line 215
    return-void

    .line 199
    .end local v0    # "targetClassToAnno":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalVariableExtractor.extractAndApply: Invalid variable and element passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::extractAndApply ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getRawTypeAttributes()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation
.end method

.method protected handleInvalid(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "invalid":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v0, "remaining":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 115
    .local v2, "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_0

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v1, "msg":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInvalid(this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):\nInvalid variable and element passed to extractAndApply; type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->element:Ljavax/lang/model/element/Element;

    .line 134
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), invalid annotations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v2, "remainingInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 138
    .local v4, "r":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v4    # "r":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    goto :goto_1

    .line 140
    :cond_2
    const-string v3, ", "

    invoke-static {v3, v2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nTargeted annotations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nValid annotations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 147
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->validTargets()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "remainingInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method protected abstract handleTargeted(Ljava/util/List;)V
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
.end method

.method protected handleValid(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "valid":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    return-void
.end method

.method protected abstract isAccepted()Z
.end method

.method protected sift(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;>;"
        }
    .end annotation

    .line 163
    .local p1, "typeCompounds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 165
    .local v0, "targetClassToCompound":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    invoke-static {}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->values()[Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 166
    .local v4, "targetClass":Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v4    # "targetClass":Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 170
    .local v2, "typeCompound":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v3, v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    .line 173
    .local v3, "typeCompoundTarget":Lcom/sun/tools/javac/code/TargetType;
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    sget-object v4, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->TARGETED:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "destList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    goto :goto_2

    .line 176
    .end local v4    # "destList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->validTargets()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    sget-object v4, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->VALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .restart local v4    # "destList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    goto :goto_2

    .line 180
    .end local v4    # "destList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_2
    sget-object v4, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->INVALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 183
    .restart local v4    # "destList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :goto_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "typeCompound":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v3    # "typeCompoundTarget":Lcom/sun/tools/javac/code/TargetType;
    .end local v4    # "destList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    goto :goto_1

    .line 186
    :cond_3
    return-object v0
.end method

.method protected abstract validTargets()[Lcom/sun/tools/javac/code/TargetType;
.end method
