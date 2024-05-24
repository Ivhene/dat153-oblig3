.class public Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;
.source "ModifierValidator.java"


# instance fields
.field private final hasDefaultAndStaticInterfaceMethods:Z

.field private final hasPrivateInterfaceMethods:Z

.field private final hasStrictfp:Z

.field private final interfaceWithNothingSpecial:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field private final interfaceWithStaticAndDefault:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

.field private final interfaceWithStaticAndDefaultAndPrivate:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 12
    .param p1, "hasStrictfp"    # Z
    .param p2, "hasDefaultAndStaticInterfaceMethods"    # Z
    .param p3, "hasPrivateInterfaceMethods"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hasStrictfp",
            "hasDefaultAndStaticInterfaceMethods",
            "hasPrivateInterfaceMethods"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    .line 26
    const/4 v0, 0x7

    new-array v1, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->interfaceWithNothingSpecial:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 27
    const/16 v1, 0x9

    new-array v2, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v3

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v4

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v5

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v6

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v7

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v8

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v9

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v0

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/16 v11, 0x8

    aput-object v10, v2, v11

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->interfaceWithStaticAndDefault:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 28
    const/16 v2, 0xa

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v10, v2, v3

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v4

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v6

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v7

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v8

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v9

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v2, v0

    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v0, v2, v11

    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v0, v2, v1

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->interfaceWithStaticAndDefaultAndPrivate:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 35
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->hasStrictfp:Z

    .line 36
    iput-boolean p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->hasDefaultAndStaticInterfaceMethods:Z

    .line 37
    iput-boolean p3, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->hasPrivateInterfaceMethods:Z

    .line 38
    return-void
.end method

.method private arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "searchItem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "items",
            "searchItem"
        }
    .end annotation

    .line 187
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 188
    .local v3, "o":Ljava/lang/Object;
    if-ne v3, p2, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0

    .line 187
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    return v1
.end method

.method private removeModifierFromArray(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .locals 2
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .param p2, "allowedModifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "allowedModifiers"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v0, "newModifiers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    check-cast p2, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 183
    return-object p2
.end method

.method private varargs validateAtMostOneOf(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V
    .locals 7
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p3, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "reporter",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<",
            "*>;:",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;>(TT;",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
            "[",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")V"
        }
    .end annotation

    .line 196
    .local p1, "t":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "foundModifiers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;>;"
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    .line 198
    .local v4, "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    invoke-interface {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v4    # "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 203
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;

    const-string v3, "\', \'"

    const-string v4, "\'."

    const-string v5, "Can have only one of \'"

    invoke-direct {v1, v5, v3, v4}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v1, "builder":Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 205
    .restart local v4    # "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;

    .line 206
    .end local v4    # "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    goto :goto_1

    .line 207
    :cond_2
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v3, v4, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .end local v1    # "builder":Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;
    :cond_3
    return-void
.end method

.method private validateClassModifiers(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isTopLevelType()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 52
    new-array v0, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v5

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v4

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v6, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v6, v0, v5

    sget-object v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v5, v0, v4

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v4, v0, v3

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v0, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isLocalClassDeclaration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-array v0, v2, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v5

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v4

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method private validateInterfaceModifiers(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 6
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    .line 62
    new-array v0, v4, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v4, v0, v3

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v0, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v5, v0, v3

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v0, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method private varargs validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V
    .locals 5
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p3, "allowedModifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter",
            "allowedModifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers<",
            "*>;:",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;>(TT;",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
            "[",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")V"
        }
    .end annotation

    .line 165
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;, "TT;"
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateAtMostOneOf(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 166
    new-array v0, v4, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateAtMostOneOf(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 167
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->hasStrictfp:Z

    if-eqz v0, :cond_0

    .line 168
    new-array v0, v4, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateAtMostOneOf(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->removeModifierFromArray(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object p3

    .line 172
    :goto_0
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 173
    .local v1, "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\'%s\' is not allowed here."

    invoke-virtual {p2, v2, v4, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .end local v1    # "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    :cond_1
    goto :goto_1

    .line 177
    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$visit$0$org-checkerframework-com-github-javaparser-ast-validator-chunks-ModifierValidator(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)V
    .locals 3
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "p"
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p2, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method synthetic lambda$visit$1$org-checkerframework-com-github-javaparser-ast-validator-chunks-ModifierValidator(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)V
    .locals 3
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "p"
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p2, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    return-void
.end method

.method synthetic lambda$visit$2$org-checkerframework-com-github-javaparser-ast-validator-chunks-ModifierValidator(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)V
    .locals 3
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "p"
        }
    .end annotation

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p2, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 142
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateInterfaceModifiers(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 81
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 87
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateInterfaceModifiers(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateClassModifiers(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 47
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 93
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 94
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->isTopLevelType()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 71
    new-array v0, v3, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v0, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v4, v0, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 75
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 100
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isAbstract()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;

    const-string v8, "\', \'"

    const-string v9, "\'."

    const-string v10, "Cannot be \'abstract\' and also \'"

    invoke-direct {v0, v10, v8, v9}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v0, "builder":Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;
    new-array v8, v6, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v9, v8, v7

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v9, v8, v5

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v9, v8, v4

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v9, v8, v3

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v9, v8, v2

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v9, v8, v1

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    .line 108
    .local v9, "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    invoke-virtual {p1, v9}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 109
    invoke-virtual {v9}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;

    .line 111
    .end local v9    # "m":Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v8, v9}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .end local v0    # "builder":Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_6

    .line 118
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->hasDefaultAndStaticInterfaceMethods:Z

    if-eqz v0, :cond_4

    .line 120
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->hasPrivateInterfaceMethods:Z

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->interfaceWithStaticAndDefaultAndPrivate:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_1

    .line 123
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->interfaceWithStaticAndDefault:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_1

    .line 126
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->interfaceWithNothingSpecial:[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    goto :goto_1

    .line 129
    :cond_5
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v8, v0, v7

    sget-object v7, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v7, v0, v5

    sget-object v5, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v5, v0, v4

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v4, v0, v3

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v0, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v1, v0, v6

    const/4 v1, 0x7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 133
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 134
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 143
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 155
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 161
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 25
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p2, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;->validateModifiers(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)V

    .line 149
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V

    .line 150
    return-void
.end method
