.class public Lorg/checkerframework/framework/type/AnnotatedTypeCopier;
.super Ljava/lang/Object;
.source "AnnotatedTypeCopier.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        "Ljava/util/IdentityHashMap<",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final copyAnnotations:Z

.field protected visitingExecutableTypeParam:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>(Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "copyAnnotations"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitingExecutableTypeParam:Z

    .line 74
    iput-boolean p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->copyAnnotations:Z

    .line 75
    return-void
.end method


# virtual methods
.method protected makeCopy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 379
    .local p1, "original":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    nop

    .line 382
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 384
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isDeclaration()Z

    move-result v2

    .line 381
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 385
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 387
    return-object v0
.end method

.method protected makeOrReturnCopy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">(TT;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)TT;"
        }
    .end annotation

    .line 366
    .local p1, "original":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->makeCopy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 371
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-object v0
.end method

.method protected maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "source"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "dest"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 400
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->copyAnnotations:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 403
    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 89
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-virtual {p1, p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 96
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 244
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 248
    :cond_0
    nop

    .line 251
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getUnderlyingType()Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 253
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->isDeclaration()Z

    move-result v2

    .line 250
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 254
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 255
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 259
    return-object v0
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 103
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 107
    :cond_0
    nop

    .line 110
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 112
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isDeclaration()Z

    move-result v2

    .line 109
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 113
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 114
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setWasRaw()V

    .line 120
    :cond_1
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 122
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    iput-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 125
    :cond_2
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "copyTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 128
    .local v3, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 133
    .end local v1    # "copyTypeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_4
    return-object v0
.end method

.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 196
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 200
    :cond_0
    nop

    .line 203
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getUnderlyingType()Ljavax/lang/model/type/ExecutableType;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 205
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->isDeclaration()Z

    move-result v2

    .line 202
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 206
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 207
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->setElement(Ljavax/lang/model/element/ExecutableElement;)V

    .line 211
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->receiverType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->receiverType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 213
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    iput-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->receiverType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 216
    :cond_1
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->paramTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 217
    .local v2, "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->paramTypes:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v2    # "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 220
    :cond_2
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->throwsTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 221
    .local v2, "thrown":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->throwsTypes:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v2    # "thrown":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 224
    :cond_3
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->returnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->returnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 226
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->typeVarTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 232
    .local v2, "typeVariable":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitingExecutableTypeParam:Z

    .line 233
    iget-object v3, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->typeVarTypes:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v2    # "typeVariable":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_2

    .line 235
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitingExecutableTypeParam:Z

    .line 237
    return-object v0
.end method

.method public bridge synthetic visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 140
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 144
    :cond_0
    nop

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 149
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->isDeclaration()Z

    move-result v2

    .line 146
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 150
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 151
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "copySupertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    iget-object v2, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 156
    .local v3, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    .line 161
    .end local v1    # "copySupertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 303
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->makeCopy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 310
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->makeOrReturnCopy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 296
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->makeCopy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 266
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 270
    :cond_0
    nop

    .line 273
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 275
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->isDeclaration()Z

    move-result v2

    .line 272
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 276
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 277
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 284
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 289
    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 168
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 172
    :cond_0
    nop

    .line 175
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 177
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->isDeclaration()Z

    move-result v2

    .line 174
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 178
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 179
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->alternatives:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "copyAlternatives":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    iget-object v2, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->alternatives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 184
    .local v3, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v3    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 186
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->alternatives:Ljava/util/List;

    .line 189
    .end local v1    # "copyAlternatives":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 317
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 321
    :cond_0
    nop

    .line 324
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 326
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isDeclaration()Z

    move-result v2

    .line 323
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 327
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setUninferredTypeArgument()V

    .line 331
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 332
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 338
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 342
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getTypeVariable()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setTypeVariable(Ljavax/lang/model/type/TypeVariable;)V

    .line 344
    return-object v0
.end method
