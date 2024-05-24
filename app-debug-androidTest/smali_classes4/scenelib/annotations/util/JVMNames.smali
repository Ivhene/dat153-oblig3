.class public Lscenelib/annotations/util/JVMNames;
.super Ljava/lang/Object;
.source "JVMNames.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJVMMethodName(Lcom/sun/source/tree/MethodTree;)Ljava/lang/String;
    .locals 9
    .param p0, "methodTree"    # Lcom/sun/source/tree/MethodTree;

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 37
    .local v0, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    if-nez v0, :cond_1

    .line 44
    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    .line 45
    .local v2, "params":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;>;"
    iget-object v3, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 46
    .local v3, "param":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    move-object v4, p0

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 47
    .local v4, "typeTree":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    invoke-static {v4}, Lscenelib/annotations/util/JVMNames;->treeToJVMLString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "returnTypeStr":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 49
    iget-object v6, v3, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v6}, Lscenelib/annotations/util/JVMNames;->treeToJVMLString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 51
    iget-object v6, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    goto :goto_0

    .line 53
    .end local v2    # "params":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;>;"
    .end local v3    # "param":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .end local v4    # "typeTree":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_0
    goto :goto_2

    .line 54
    .end local v5    # "returnTypeStr":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 55
    .local v2, "returnType":Ljavax/lang/model/type/TypeMirror;
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-static {v3}, Lscenelib/annotations/util/JVMNames;->typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .restart local v5    # "returnTypeStr":Ljava/lang/String;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/VariableElement;

    .line 57
    .local v4, "ve":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/code/Type;

    .line 58
    .local v6, "vt":Lcom/sun/tools/javac/code/Type;
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->getTag()Lcom/sun/tools/javac/code/TypeTag;

    move-result-object v7

    sget-object v8, Lcom/sun/tools/javac/code/TypeTag;->TYPEVAR:Lcom/sun/tools/javac/code/TypeTag;

    if-ne v7, v8, :cond_2

    .line 59
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    .line 61
    :cond_2
    invoke-static {v6}, Lscenelib/annotations/util/JVMNames;->typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .end local v4    # "ve":Ljavax/lang/model/element/VariableElement;
    .end local v6    # "vt":Lcom/sun/tools/javac/code/Type;
    goto :goto_1

    .line 64
    .end local v2    # "returnType":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    :goto_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getJVMMethodName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 8
    .param p0, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 82
    .local v1, "returnType":Ljavax/lang/model/type/TypeMirror;
    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lscenelib/annotations/util/JVMNames;->typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "returnTypeStr":Ljava/lang/String;
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/VariableElement;

    .line 84
    .local v4, "ve":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 85
    .local v5, "vt":Lcom/sun/tools/javac/code/Type;
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getTag()Lcom/sun/tools/javac/code/TypeTag;

    move-result-object v6

    sget-object v7, Lcom/sun/tools/javac/code/TypeTag;->TYPEVAR:Lcom/sun/tools/javac/code/TypeTag;

    if-ne v6, v7, :cond_0

    .line 86
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 88
    :cond_0
    invoke-static {v5}, Lscenelib/annotations/util/JVMNames;->typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .end local v4    # "ve":Ljavax/lang/model/element/VariableElement;
    .end local v5    # "vt":Lcom/sun/tools/javac/code/Type;
    goto :goto_0

    .line 90
    :cond_1
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static jvmlStringToJavaTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 147
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "void"

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->fieldDescriptorToBinaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0
.end method

.method private static treeToJVMLString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;
    .locals 2
    .param p0, "typeTree"    # Lcom/sun/source/tree/Tree;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lscenelib/annotations/util/JVMNames;->treeToJVMLString(Lcom/sun/source/tree/Tree;Ljava/lang/StringBuilder;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static treeToJVMLString(Lcom/sun/source/tree/Tree;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "typeTree"    # Lcom/sun/source/tree/Tree;
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 133
    sget-object v0, Lscenelib/annotations/util/JVMNames$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "str":Ljava/lang/String;
    const-string v1, "void"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "V"

    goto :goto_0

    .line 135
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0, p1}, Lscenelib/annotations/util/JVMNames;->treeToJVMLString(Lcom/sun/source/tree/Tree;Ljava/lang/StringBuilder;)V

    .line 137
    goto :goto_1

    .line 141
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->binaryNameToFieldDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/sun/tools/javac/code/Type;

    .line 106
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-static {v1}, Lscenelib/annotations/util/JVMNames;->typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lscenelib/annotations/util/JVMNames;->typeToJvmlString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 112
    const-string v0, "V"

    return-object v0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->binaryNameToFieldDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
